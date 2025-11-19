void sub_100001B08(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) initiator];

  if (v2)
  {
    goto LABEL_24;
  }

  v3 = -[PTPInitiator initWithHostLocationID:]([PTPInitiator alloc], "initWithHostLocationID:", [*(v1 + 32) locationID]);
  [*(v1 + 32) setInitiator:v3];

  v4 = [*(v1 + 40) BOOLValue];
  v5 = [*(v1 + 32) initiator];
  [v5 setOrderAscending:v4];

  v6 = [*(v1 + 32) initiator];
  [v6 setDelegate:*(v1 + 32)];

  v7 = [*(v1 + 32) initiator];
  if (v7)
  {
    v8 = v7;
    v9 = [*(v1 + 32) initiator];
    v10 = [v9 start];

    if (v10)
    {
      v11 = 1;
      v128 = v1;
      while (1)
      {
        v12 = [*(v1 + 32) initiator];
        v13 = [v12 deviceInfo];

        __ICOSLogCreate();
        v14 = [@"deviceInfo" length];
        if (v13)
        {
          break;
        }

        v24 = @"deviceInfo";
        if (v14 >= 0x15)
        {
          v28 = [@"deviceInfo" substringWithRange:{0, 18}];
          v24 = [v28 stringByAppendingString:@".."];
        }

        v26 = [NSString stringWithFormat:@"Failed get deviceInfo -- Performing Close/Retry"];
        v27 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

LABEL_18:
        v29 = v24;
        v30 = v27;
        v31 = [(__CFString *)v24 UTF8String];
        *buf = 136446466;
        v136 = v31;
        v137 = 2114;
        v138 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_19:
        v1 = v128;
        v32 = [*(v128 + 32) initiator];
        [v32 resetDevice];

        if (--v11)
        {
          goto LABEL_20;
        }
      }

      v15 = @"deviceInfo";
      if (v14 >= 0x15)
      {
        v16 = [@"deviceInfo" substringWithRange:{0, 18}];
        v15 = [v16 stringByAppendingString:@".."];
      }

      v17 = [NSString stringWithFormat:@"Dataset: %@", v13];
      v18 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v15;
        v20 = v18;
        v21 = [(__CFString *)v15 UTF8String];
        *buf = 136446466;
        v136 = v21;
        v137 = 2114;
        v138 = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v22 = [*(v128 + 32) initiator];
      v23 = [v22 openSession];

      if (!v23)
      {
        __ICOSLogCreate();
        v24 = @"session";
        if ([@"session" length] >= 0x15)
        {
          v25 = [@"session" substringWithRange:{0, 18}];
          v24 = [v25 stringByAppendingString:@".."];
        }

        v26 = [NSString stringWithFormat:@"Failed to open -- Performing Close/Retry"];
        v27 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v129 = objc_alloc_init(NSMutableArray);
      v39 = [v13 model];
      v40 = [*(v128 + 32) initiator];
      v41 = [v40 refreshAssignedDeviceName];

      v42 = [*(v128 + 32) initiator];
      v43 = [v42 userAssignedDeviceName];

      v44 = v43;
      if (v43 || v39 && (v46 = [v39 length], v44 = v39, v46))
      {
        v45 = v44;
      }

      else
      {
        v45 = @"PTP Camera";
      }

      v47 = [*(v128 + 32) initiator];
      if ([v47 iCloudPhotosEnabled])
      {
        v48 = 1;
      }

      else
      {
        v49 = [v13 operationsSupported];
        v50 = [NSNumber numberWithUnsignedShort:4107];
        v48 = [v49 containsObject:v50] ^ 1;
      }

      if ([v39 length] >= 6)
      {
        v51 = [v39 substringToIndex:6];
        v52 = [v51 isEqualToString:@"Apple "];

        if (v52)
        {
          v53 = [v39 substringFromIndex:6];
          v54 = v53;
          if (v53 && [v53 length])
          {
            v55 = v54;
            if (([(__CFString *)v55 isEqualToString:@"iPhone"]& 1) != 0)
            {
              v56 = @"iphone";
              v1 = v128;
              goto LABEL_76;
            }

            v1 = v128;
            if (([(__CFString *)v55 isEqualToString:@"iPad"]& 1) != 0)
            {
              v56 = @"ipad";
              goto LABEL_76;
            }

            if ([(__CFString *)v55 isEqualToString:@"iPod"])
            {
              v56 = @"ipod";
LABEL_76:
              v124 = [*(v1 + 32) cameraDictionary];
              [v124 setObject:v56 forKeyedSubscript:@"ICDeviceSystemSymbolName"];

              v1 = v128;
            }

            v57 = v55;
LABEL_41:

            v58 = [*(v1 + 32) cameraDictionary];
            [v58 setObject:v45 forKeyedSubscript:@"ICDeviceName"];

            v59 = [*(v1 + 32) cameraDictionary];
            [v59 setObject:&__kCFBooleanFalse forKeyedSubscript:@"ICDeviceEjectable"];

            v60 = [NSNumber numberWithBool:v48];
            v61 = [*(v1 + 32) cameraDictionary];
            [v61 setObject:v60 forKeyedSubscript:@"ICDeviceLocked"];

            v62 = [*(v1 + 32) cameraDictionary];
            [v62 setObject:@"ICTransportTypeUSB" forKeyedSubscript:@"ICDeviceTransportType"];

            v63 = [*(v1 + 32) cameraDictionary];
            [v63 setObject:@"Camera" forKeyedSubscript:@"ICDeviceType"];

            v64 = [*(v1 + 32) cameraDictionary];
            [v64 setObject:v57 forKeyedSubscript:@"ICDeviceProductKind"];

            v65 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v1 + 32) locationID]);
            v66 = [*(v1 + 32) cameraDictionary];
            [v66 setObject:v65 forKeyedSubscript:@"ICDeviceUSBLocationID"];

            v67 = [*(v1 + 32) initiator];
            v68 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v67 deviceVendorID]);
            v69 = [*(v1 + 32) cameraDictionary];
            [v69 setObject:v68 forKeyedSubscript:@"ICDeviceUSBVendorID"];

            v70 = [*(v1 + 32) initiator];
            v71 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v70 deviceProductID]);
            v72 = [*(v1 + 32) cameraDictionary];
            [v72 setObject:v71 forKeyedSubscript:@"ICDeviceUSBProductID"];

            v73 = [*(v1 + 32) initiator];
            v74 = [v73 deviceSerialNumberString];
            v75 = [*(v1 + 32) cameraDictionary];
            [v75 setObject:v74 forKeyedSubscript:@"ICDeviceSerialNumberString"];

            v76 = [v13 serialNumber];

            if (v76)
            {
              v77 = [v13 serialNumber];
              v78 = [*(v1 + 32) cameraDictionary];
              [v78 setObject:v77 forKeyedSubscript:@"ICDevicePTPSerialNumberString"];
            }

            v79 = [*(v1 + 32) initiator];
            v80 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v79 isAccessRestrictedAppleDevice]);
            v81 = [*(v1 + 32) cameraDictionary];
            [v81 setObject:v80 forKeyedSubscript:@"ICDeviceAccessRestrictedAppleDevice"];

            v82 = [*(v1 + 32) initiator];
            v83 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v82 iCloudPhotosEnabled]);
            v84 = [*(v1 + 32) cameraDictionary];
            [v84 setObject:v83 forKeyedSubscript:@"ICDeviceiCloudPhotosEnabled"];

            v85 = [*(v1 + 32) initiator];
            v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v85 iCloudPhotosOptimizeStorageState]);
            v87 = [*(v1 + 32) cameraDictionary];
            [v87 setObject:v86 forKeyedSubscript:@"ICDeviceiCloudOptimizeStorageState"];

            v88 = [*(v1 + 32) initiator];
            v89 = [v88 mobdevProps];

            if (v89)
            {
              v90 = [*(v1 + 32) initiator];
              v91 = [v90 mobdevProps];
              v92 = [*(v1 + 32) cameraDictionary];
              [v92 setObject:v91 forKeyedSubscript:@"ICMobileDeviceProperties"];
            }

            v127 = v39;
            v93 = [*(v1 + 32) cameraDictionary];
            v94 = [v93 objectForKeyedSubscript:@"ICMobileDeviceProperties"];

            if (!v94)
            {
              v95 = +[NSMutableDictionary dictionary];
              v96 = [*(v1 + 32) cameraDictionary];
              [v96 setObject:v95 forKeyedSubscript:@"ICMobileDeviceProperties"];
            }

            v125 = v57;
            v126 = v45;
            v97 = [*(v1 + 32) initiator];
            v98 = [v97 appleSerialNumberString];

            if (v98)
            {
              v99 = [*(v1 + 32) initiator];
              v100 = [v99 appleSerialNumberString];
              v101 = [*(v1 + 32) cameraDictionary];
              v102 = [v101 objectForKeyedSubscript:@"ICMobileDeviceProperties"];
              [v102 setObject:v100 forKeyedSubscript:@"AppleSerialNumber"];
            }

            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v103 = [v13 operationsSupported];
            v104 = [v103 countByEnumeratingWithState:&v130 objects:v134 count:16];
            if (v104)
            {
              v105 = v104;
              v106 = *v131;
              do
              {
                for (i = 0; i != v105; i = i + 1)
                {
                  if (*v131 != v106)
                  {
                    objc_enumerationMutation(v103);
                  }

                  v108 = [*(*(&v130 + 1) + 8 * i) unsignedShortValue];
                  switch(v108)
                  {
                    case 0x1016u:
                      v113 = [v13 devicePropertiesSupported];
                      v114 = [v113 containsObject:&off_10002F438];

                      v112 = @"ICCameraDeviceCanSyncClock";
                      if (v114)
                      {
                        goto LABEL_64;
                      }

                      break;
                    case 0x100Eu:
                      v112 = @"ICCameraDeviceCanTakePicture";
LABEL_64:
                      [v129 addObject:v112];
                      continue;
                    case 0x100Bu:
                      v109 = [*(v1 + 32) initiator];
                      if (([v109 isAppleDevice] & 1) == 0)
                      {

                        v112 = @"ICCameraDeviceCanDeleteOneFile";
                        goto LABEL_64;
                      }

                      v110 = [*(v1 + 32) initiator];
                      v111 = [v110 iCloudPhotosEnabled];

                      v1 = v128;
                      v112 = @"ICCameraDeviceCanDeleteOneFile";
                      if ((v111 & 1) == 0)
                      {
                        goto LABEL_64;
                      }

                      break;
                    default:
                      continue;
                  }
                }

                v105 = [v103 countByEnumeratingWithState:&v130 objects:v134 count:16];
              }

              while (v105);
            }

            [v129 addObject:@"ICCameraDeviceCanAcceptPTPCommands"];
            v115 = [*(v1 + 32) cameraDictionary];
            [v115 setObject:v129 forKeyedSubscript:@"ICDeviceCapabilities"];

            __ICOSLogCreate();
            v116 = @"session";
            if ([@"session" length] >= 0x15)
            {
              v117 = [@"session" substringWithRange:{0, 18}];
              v116 = [v117 stringByAppendingString:@".."];
            }

            v118 = [*(v1 + 32) cameraDictionary];
            v119 = [NSString stringWithFormat:@"PTPCameraDevice Properties: %@", v118];

            v120 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v121 = v116;
              v122 = v120;
              v123 = [(__CFString *)v116 UTF8String];
              *buf = 136446466;
              v136 = v123;
              v137 = 2114;
              v138 = v119;
              _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v33 = 0;
            goto LABEL_21;
          }
        }
      }

      v1 = v128;
      v55 = [*(v128 + 32) cameraDictionary];
      [(__CFString *)v55 setObject:@"camera" forKeyedSubscript:@"ICDeviceSystemSymbolName"];
      v57 = @"Camera";
      goto LABEL_41;
    }
  }

LABEL_20:
  v33 = 1;
LABEL_21:
  v34 = [*(v1 + 32) initiator];

  if (v34 && v33)
  {
    v35 = [*(v1 + 32) initiator];
    [v35 removeDevice];

    v36 = objc_opt_new();
    [*(v1 + 32) setCameraDictionary:v36];
  }

LABEL_24:
  v37 = *(v1 + 48);
  v38 = [*(v1 + 32) cameraDictionary];
  (*(v37 + 16))(v37, v38);
}

void sub_100002AC4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 addNotifications:*(a1 + 40) toSessionWithConnection:*(a1 + 48)];
}

void sub_100002C00(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 remNotifications:*(a1 + 40) fromSessionWithConnection:*(a1 + 48)];
}

void sub_100002D5C(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = [*(a1 + 32) itemForObjectHandle:*(a1 + 40)];
  v5 = v2;
  if (v2)
  {
    [v2 metadataWithOptions:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithInteger:-21450];
    [v3 setObject:v4 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 32) releasePowerAssertion];
}

void sub_100002F34(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = [*(a1 + 32) itemForObjectHandle:*(a1 + 40)];
  v5 = v2;
  if (v2)
  {
    [v2 thumbnailDataWithOptions:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithInteger:-21450];
    [v3 setObject:v4 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 32) releasePowerAssertion];
}

void sub_1000030E0(uint64_t a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v2 = [NSNumber numberWithInteger:-9934];
  [v3 setObject:v2 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 40) + 16))();
}

void sub_100003314(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = [*(a1 + 32) initiator];
  v22 = [v2 cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];

  v3 = +[NSMutableDictionary dictionary];
  v4 = [v22 size];
  v5 = [*(a1 + 48) objectForKeyedSubscript:@"ICReadOffset"];
  if (v5)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"ICReadOffset"];
    v7 = [v6 unsignedLongLongValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 48) objectForKeyedSubscript:@"ICReadLength"];
  if (v8)
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:@"ICReadLength"];
    v10 = [v9 unsignedLongLongValue];
  }

  else
  {
    v10 = [v22 size];
  }

  v13 = v7 <= v4 && v7 >= 0 && v10 >= 1 && &v7[v10] <= v4;
  v14 = -21449;
  if (v13)
  {
    v14 = 0;
  }

  if (v10 <= 52428800)
  {
    v15 = v14;
  }

  else
  {
    v15 = -21446;
  }

  if (!v10 || v15)
  {
    [v3 addEntriesFromDictionary:*(a1 + 48)];
    v18 = 0;
  }

  else
  {
    v16 = sub_100015240(v10);
    v17 = mmap(0, v16, 3, 4097, -1, 0);
    v18 = [v22 readStream:v17 size:v10 offset:v7];
    v19 = dispatch_data_create(v17, v16, 0, _dispatch_data_destructor_munmap);
    [v3 addEntriesFromDictionary:*(a1 + 48)];
    if (v19)
    {
      goto LABEL_28;
    }
  }

  v19 = +[NSData data];
LABEL_28:
  [v3 setObject:v19 forKeyedSubscript:@"ICReadData"];

  [v3 setObject:&off_10002F468 forKeyedSubscript:@"ICBufferOffset"];
  v20 = [NSNumber numberWithUnsignedLong:v18];
  [v3 setObject:v20 forKeyedSubscript:@"ICBytesRead"];

  v21 = [NSNumber numberWithInteger:v15];
  [v3 setObject:v21 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) releasePowerAssertion];
}

void sub_100003710(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = [*(a1 + 32) itemForObjectHandle:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) initiator];
    v4 = [v3 deleteFile:v2];

    v5 = v4 ^ 1;
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = -9941;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 addEntriesFromDictionary:*(a1 + 48)];
  v8 = [NSNumber numberWithInteger:v6];
  [v7 setObject:v8 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 64) + 16))();
  [*(a1 + 32) releasePowerAssertion];
  if ((v5 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000038B4;
    v11[3] = &unk_10002C820;
    v11[4] = v9;
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v10 = [NSBlockOperation blockOperationWithBlock:v11];
    [v9 addInteractiveOperation:v10];
  }
}

void sub_1000038B4(uint64_t a1)
{
  v2 = [*(a1 + 32) allConnections];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    [v3 removeObject:*(a1 + 40)];
    v6 = *(a1 + 48);
    v7 = @"ICObjectIDArray";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

    [*(a1 + 32) sendRemovedItemsNotification:v5 toConnections:v3];
  }
}

void sub_100003A88(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) initiator];
  v4 = [v3 cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];

  v9 = 0;
  v5 = [v4 fingerprintWithError:&v9];
  v6 = v9;
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"ICCameraFileFingerprint"];
  }

  if (v6)
  {
    v7 = [v6 code];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSNumber numberWithInteger:v7];
  [v2 setObject:v8 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) releasePowerAssertion];
}

void sub_100003D58(uint64_t a1)
{
  v2 = [*(a1 + 32) initiator];
  [v2 sendPTPCommand:*(a1 + 40) andPayload:*(a1 + 48) withReply:*(a1 + 56)];
}

void sub_10000410C(id *a1)
{
  v2 = [a1[4] initiator];
  v3 = [a1[5] objectForKeyedSubscript:@"ICEnumerationChronologicalOrder"];
  v4 = v3;
  if (v3)
  {
    [v2 setEnumerationOrder:{objc_msgSend(v3, "integerValue")}];
  }

  __ICOSLogCreate();
  v5 = @"enumerateContent";
  if ([@"enumerateContent" length] >= 0x15)
  {
    v6 = [@"enumerateContent" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Requested From:%d", [a1[6] processIdentifier]);
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v29 = [(__CFString *)v5 UTF8String];
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [v2 readStorages];
  __ICOSLogCreate();
  if (v11)
  {
    v12 = @"Content ^Enumerating^";
    if ([@"Content ^Enumerating^" length] >= 0x15)
    {
      v13 = [@"Content ^Enumerating^" substringWithRange:{0, 18}];
      v12 = [v13 stringByAppendingString:@".."];
    }

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Requested From:%d", [a1[6] processIdentifier]);
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v12;
      v17 = v15;
      v18 = [(__CFString *)v12 UTF8String];
      *buf = 136446466;
      v29 = v18;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v19 = @"Content -Enumerated-";
    if ([@"Content -Enumerated-" length] >= 0x15)
    {
      v20 = [@"Content -Enumerated-" substringWithRange:{0, 18}];
      v19 = [v20 stringByAppendingString:@".."];
    }

    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Requested From:%d", [a1[6] processIdentifier]);
    v22 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v19;
      v24 = v22;
      v25 = [(__CFString *)v19 UTF8String];
      *buf = 136446466;
      v29 = v25;
      v30 = 2114;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v26 = [v2 enumerationOrder];
    v27 = a1[6];
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    [v2 sendContentsNotificationWithOrder:v26 toConnections:v12];
  }
}

void sub_1000046E0(id a1)
{
  v12 = [NSSet alloc];
  v11 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_100033880 = [v12 initWithObjects:{v11, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];

  _objc_release_x1();
}

intptr_t sub_100004CF8(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = @"closeDevice";
  if ([@"closeDevice" length] >= 0x15)
  {
    v3 = [@"closeDevice" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [*(a1 + 32) cameraDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ICDeviceName"];
  v6 = [NSString stringWithFormat:@">>> Issuing Close: %@", v5];

  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v2;
    v9 = v7;
    *buf = 136446466;
    v14 = [(__CFString *)v2 UTF8String];
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v10 = [*(a1 + 32) initiator];

  if (v10)
  {
    v11 = [*(a1 + 32) initiator];
    [v11 stop];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100005904(uint64_t a1)
{
  if (![*(a1 + 32) requestPending])
  {
    v2 = [*(a1 + 40) eventCode];
    if (v2 <= 16395)
    {
      if (v2 <= 16387)
      {
        if (v2 == 16386)
        {
          v41 = [*(a1 + 32) objectInfo:{objc_msgSend(*(a1 + 40), "parameter1")}];
          v4 = v41;
          if (v41)
          {
            v5 = [*(a1 + 32) storageForStorageID:{objc_msgSend(v41, "storageID")}];
            if (v5)
            {
              v42 = [v5 cameraFolderWithObjectID:{objc_msgSend(v4, "parentObject")}];
              v8 = v42;
              if (v42)
              {
                [v42 newItemWithObjectInfo:v4 notify:1];
              }

              goto LABEL_46;
            }

LABEL_47:
          }

LABEL_49:

          goto LABEL_50;
        }

        if (v2 == 16387)
        {
          v3 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "parameter1")}];
          v4 = v3;
          if (v3)
          {
            v5 = [*(a1 + 32) storageForStorageID:{objc_msgSend(v3, "storageID")}];
            if (v5)
            {
              v73 = @"ICObjectIDArray";
              v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) parameter1]);
              v72 = v6;
              v7 = [NSArray arrayWithObjects:&v72 count:1];
              v74 = v7;
              v8 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];

              [v5 removeCameraFileFromIndex:{objc_msgSend(*(a1 + 40), "parameter1")}];
              v9 = [*(a1 + 32) delegate];
              v10 = [*(a1 + 32) delegate];
              v11 = [v10 allConnections];
              [v9 sendRemovedItemsNotification:v8 toConnections:v11];

LABEL_46:
              goto LABEL_47;
            }

            goto LABEL_47;
          }

          goto LABEL_49;
        }

LABEL_64:
        if ([*(a1 + 40) eventCode] == 49173)
        {
          [*(a1 + 32) setSessionOpen:0];
        }

        goto LABEL_50;
      }

      if (v2 == 16388)
      {
        v45 = [*(a1 + 40) parameter1];
        v46 = [*(a1 + 32) isAppleDevice];
        v47 = v46;
        if (v46 && v45 != -17958194)
        {
          [*(a1 + 32) setDeviceFinishedEnumerating];
        }

        __ICOSLogCreate();
        v48 = @"storage";
        if ([@"storage" length] >= 0x15)
        {
          v49 = [@"storage" substringWithRange:{0, 18}];
          v48 = [v49 stringByAppendingString:@".."];
        }

        v50 = [NSString stringWithFormat:@"added"];
        v51 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v48;
          v53 = v51;
          *buf = 136446466;
          v69 = [(__CFString *)v48 UTF8String];
          v70 = 2114;
          v71 = v50;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        if ([*(a1 + 32) sessionOpen])
        {
          [*(a1 + 32) readStorages];
        }

        if (v47)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      if (v2 != 16389)
      {
        goto LABEL_64;
      }

      v4 = [*(a1 + 32) storageForStorageID:{objc_msgSend(*(a1 + 40), "parameter1")}];
      if ([v4 storageID] == -17958194)
      {
        [*(a1 + 32) setDeviceIsPasscodeLocked:0];
        [*(a1 + 32) setDeviceIsPairedWithThisHost:1];
        v67[0] = @"ICAppleDeviceUnlocked";
        v66[0] = @"ICDeviceStatus";
        v66[1] = @"deviceIsPasscodeLocked";
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsPasscodeLocked]);
        v67[1] = v18;
        v66[2] = @"deviceIsPairedWithThisHost";
        v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsPairedWithThisHost]);
        v67[2] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];

        v21 = [*(a1 + 32) delegate];
        v22 = [*(a1 + 32) delegate];
        v23 = [v22 allConnections];
        [v21 sendStatusNotification:v20 toConnections:v23];
      }

      if (v4)
      {
        v24 = +[NSMutableArray array];
        v25 = [v4 indexedFiles];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v56;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v56 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v55 + 1) + 8 * i);
              v31 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 objHandle]);
              [v24 addObject:v31];

              [v4 removeCameraFileFromIndex:{objc_msgSend(v30, "objHandle")}];
            }

            v27 = [v25 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v27);
        }

        if ([v24 count])
        {
          v63 = @"ICObjectIDArray";
          v64 = v24;
          v32 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v33 = [*(a1 + 32) delegate];
          v34 = [*(a1 + 32) delegate];
          v35 = [v34 allConnections];
          [v33 sendRemovedItemsNotification:v32 toConnections:v35];
        }

        v36 = [*(a1 + 32) storages];
        [v36 removeObject:v4];
      }

      if (![*(a1 + 32) isAppleDevice])
      {
        goto LABEL_49;
      }

      v37 = [*(a1 + 32) storages];
      v38 = [v37 count];

      if (!v38)
      {
        [*(a1 + 32) setDeviceIsEnumerating];
      }

LABEL_41:

LABEL_52:
      [*(a1 + 32) performSelector:"processUnhandledEvents" withObject:0 afterDelay:0.0];
      return;
    }

    if (v2 > 49153)
    {
      if (v2 != 49154)
      {
        if (v2 != 49156)
        {
          goto LABEL_64;
        }

        if ([*(a1 + 32) isAppleDevice])
        {
          v39 = [*(a1 + 40) parameter1];
          v4 = [*(a1 + 32) objectInfoDatasetForNextObjectGroupInStorage:v39];
          v40 = [*(a1 + 32) storageForStorageID:v39];
          if (v40)
          {
            [v40 enumerateContent:v4 withOrder:{objc_msgSend(*(a1 + 32), "enumerationOrder")}];
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
      if (v2 == 16396)
      {
        v4 = [*(a1 + 32) storageForStorageID:{objc_msgSend(*(a1 + 40), "parameter1")}];
        [v4 refreshInfo];
        goto LABEL_49;
      }

      if (v2 != 49153)
      {
        goto LABEL_64;
      }

      if ([*(a1 + 32) isAppleDevice])
      {
        [*(a1 + 32) setDeviceIsPasscodeLocked:0];
        [*(a1 + 32) setDeviceIsPairedWithThisHost:1];
        v62[0] = @"ICAppleDeviceUnlocked";
        v61[0] = @"ICDeviceStatus";
        v61[1] = @"deviceIsPasscodeLocked";
        v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsPasscodeLocked]);
        v62[1] = v12;
        v61[2] = @"deviceIsPairedWithThisHost";
        v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsPairedWithThisHost]);
        v62[2] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];

        v15 = [*(a1 + 32) delegate];
        v16 = [*(a1 + 32) delegate];
        v17 = [v16 allConnections];
        [v15 sendStatusNotification:v14 toConnections:v17];

LABEL_51:
        goto LABEL_52;
      }
    }

LABEL_50:
    v59 = @"ICPTPEvent";
    v43 = [*(a1 + 40) contentForUSB];
    v44 = [v43 data];
    v60 = v44;
    v14 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];

    v15 = [*(a1 + 32) delegate];
    [v15 sendPTPEventNotification:v14];
    goto LABEL_51;
  }

  v54 = [*(a1 + 32) eventQueue];
  [v54 addObject:*(a1 + 40)];
}

void sub_1000072F8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!v5 || (a3 & 1) != 0)
  {
    __ICOSLogCreate();
    v13 = [@"RemoteServices" length];
    if (a3)
    {
      if (v13 >= 0x15)
      {
        v14 = [@"RemoteServices" substringWithRange:{0, 18}];
        v7 = [v14 stringByAppendingString:@".."];
      }

      else
      {
        v7 = @"RemoteServices";
      }

      string = [NSString stringWithFormat:@"Canceled: 0x%08X", *(a1 + 48)];
      v21 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v13 >= 0x15)
      {
        v15 = [@"RemoteServices" substringWithRange:{0, 18}];
        v7 = [v15 stringByAppendingString:@".."];
      }

      else
      {
        v7 = @"RemoteServices";
      }

      string = [NSString stringWithFormat:@"Invalid Device: 0x%08X", *(a1 + 48)];
      v21 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }
    }

    v22 = v7;
    v23 = v21;
    *buf = 136446466;
    v41 = [(__CFString *)v7 UTF8String];
    v42 = 2114;
    v43 = string;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);

LABEL_49:
    goto LABEL_50;
  }

  v6 = remote_device_copy_properties();
  v7 = v6;
  if (v6)
  {
    uint64 = xpc_dictionary_get_uint64(v6, "LocationID");
    if (uint64 == *(a1 + 48))
    {
      string = xpc_dictionary_get_string(v7, "BuildVersion");
      v10 = +[NSMutableDictionary dictionary];
      if (string)
      {
        string = [NSString stringWithUTF8String:string];
        if (string)
        {
          [(__CFString *)v10 setObject:string forKeyedSubscript:@"BuildVersion"];
        }
      }

      v11 = xpc_dictionary_get_string(v7, "DeviceClass");
      if (v11)
      {
        v12 = [NSString stringWithUTF8String:v11];

        if (v12)
        {
          [(__CFString *)v10 setObject:v12 forKeyedSubscript:@"DeviceClass"];
          string = v12;
        }

        else
        {
          string = 0;
        }
      }

      v24 = xpc_dictionary_get_string(v7, "ProductType");
      if (v24)
      {
        v25 = [NSString stringWithUTF8String:v24];

        if (v25)
        {
          [(__CFString *)v10 setObject:v25 forKeyedSubscript:@"ProductType"];
          string = v25;
        }

        else
        {
          string = 0;
        }
      }

      v26 = xpc_dictionary_get_string(v7, "OSVersion");
      if (v26)
      {
        v27 = [NSString stringWithUTF8String:v26];

        if (v27)
        {
          [(__CFString *)v10 setObject:v27 forKeyedSubscript:@"ProductVersion"];
          string = v27;
        }

        else
        {
          string = 0;
        }
      }

      v28 = xpc_dictionary_get_string(v7, "DeviceColor");
      if (v28)
      {
        v29 = [NSString stringWithUTF8String:v28];

        if (v29)
        {
          [(__CFString *)v10 setObject:v29 forKeyedSubscript:@"DeviceColor"];
          string = v29;
        }

        else
        {
          string = 0;
        }
      }

      v30 = xpc_dictionary_get_string(v7, "DeviceEnclosureColor");
      if (v30)
      {
        v31 = [NSString stringWithUTF8String:v30];

        if (v31)
        {
          [(__CFString *)v10 setObject:v31 forKeyedSubscript:@"DeviceEnclosureColor"];
          string = v31;
        }

        else
        {
          string = 0;
        }
      }

      v32 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) deviceIsPairedWithThisHost]);
      [(__CFString *)v10 setObject:v32 forKeyedSubscript:@"DevicePairedState"];

      v33 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) deviceIsPasscodeLocked]);
      [(__CFString *)v10 setObject:v33 forKeyedSubscript:@"PasswordProtected"];

      [*(a1 + 32) addMobdevProperties:v10];
      __ICOSLogCreate();
      v34 = @"RemoteServices";
      if ([@"RemoteServices" length] >= 0x15)
      {
        v35 = [@"RemoteServices" substringWithRange:{0, 18}];
        v34 = [v35 stringByAppendingString:@".."];
      }

      v36 = [NSString stringWithFormat:@"Updated: 0x%08X", *(a1 + 48)];
      v37 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v34;
        v39 = v37;
        *buf = 136446466;
        v41 = [(__CFString *)v34 UTF8String];
        v42 = 2114;
        v43 = v36;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      dispatch_semaphore_signal(*(a1 + 40));
    }

    else
    {
      v16 = uint64;
      __ICOSLogCreate();
      string = @"RemoteServices";
      if ([@"RemoteServices" length] >= 0x15)
      {
        v17 = [@"RemoteServices" substringWithRange:{0, 18}];
        string = [v17 stringByAppendingString:@".."];
      }

      v10 = [NSString stringWithFormat:@"Ignored: 0x%08llX", v16];
      v18 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = string;
        v20 = v18;
        *buf = 136446466;
        v41 = [(__CFString *)string UTF8String];
        v42 = 2114;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_49;
  }

LABEL_50:
}

void sub_100008034(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (!v2)
  {
    v3 = [*(a1 + 32) timerQueue];
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    [*(a1 + 32) setTimer:v4];

    v5 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v6 = (*(a1 + 48) * 1000000000.0);
    v7 = [*(a1 + 32) timer];
    dispatch_source_set_timer(v7, v5, v6, 0x5F5E100uLL);

    v8 = [*(a1 + 32) timer];
    dispatch_source_set_event_handler(v8, *(a1 + 40));

    v9 = [*(a1 + 32) timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000081B4;
    handler[3] = &unk_10002C950;
    handler[4] = *(a1 + 32);
    dispatch_source_set_cancel_handler(v9, handler);

    v10 = [*(a1 + 32) timer];
    dispatch_resume(v10);
  }
}

void sub_1000081B4(uint64_t a1)
{
  v2 = [*(a1 + 32) timerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008244;
  block[3] = &unk_10002C950;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t sub_100008304(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    v3 = [*(a1 + 32) timer];
    dispatch_source_cancel(v3);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000083E0(uint64_t a1)
{
  [*(a1 + 32) setDeviceIsEnumerating:1];
  v7[1] = @"deviceIsEnumerating";
  v8[0] = @"ICDeviceIsEnumerating";
  v7[0] = @"ICDeviceStatus";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsEnumerating]);
  v8[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [*(a1 + 32) delegate];
  v5 = [*(a1 + 32) delegate];
  v6 = [v5 allConnections];
  [v4 sendStatusNotification:v3 toConnections:v6];
}

void sub_10000856C(uint64_t a1)
{
  [*(a1 + 32) setDeviceIsEnumerating:0];
  v7[1] = @"deviceIsEnumerating";
  v8[0] = @"ICDeviceIsEnumerating";
  v7[0] = @"ICDeviceStatus";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) deviceIsEnumerating]);
  v8[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [*(a1 + 32) delegate];
  v5 = [*(a1 + 32) delegate];
  v6 = [v5 allConnections];
  [v4 sendStatusNotification:v3 toConnections:v6];
}

void sub_10000BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BFA4(uint64_t a1)
{
  v2 = [PTPOperationRequestPacket alloc];
  v3 = *(a1 + 32);
  v4 = [v3 transactionID];
  [v3 setTransactionID:(v4 + 1)];
  v5 = [v2 initWithOperationCode:36865 transactionID:v4 dataPhaseInfo:1];
  v6 = [[PTPTransaction alloc] initWithOperationRequestPacket:v5 txData:0 rxData:0 dataExpected:0];
  v7 = [*(a1 + 32) executeTransaction:v6 timeout:_gPTPDefaultTimeOutInSeconds];
  v8 = v7;
  if (v7 && [v7 responseCode] == 8193)
  {
    v50 = v5;
    v9 = [v8 numParameters];
    v10 = a1;
    if (v9 >= 3)
    {
      v11 = v9;
      [*(a1 + 32) setDeviceIsPasscodeLocked:{objc_msgSend(v8, "parameter3") != 0}];
      __ICOSLogCreate();
      v12 = @"access";
      if ([@"access" length] >= 0x15)
      {
        v13 = [@"access" substringWithRange:{0, 18}];
        v12 = [v13 stringByAppendingString:@".."];
      }

      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"deviceIsPasscodeLocked: %d", [*(a1 + 32) deviceIsPasscodeLocked]);
      v15 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v12;
        v17 = v15;
        *buf = 136446466;
        v57 = [(__CFString *)v12 UTF8String];
        v58 = 2114;
        v59 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      a1 = v10;
      if (v11 != 3)
      {
        [*(v10 + 32) setDeviceIsPairedWithThisHost:{objc_msgSend(v8, "parameter4") != 0}];
      }
    }

    v48 = v8;
    v49 = v6;
    v18 = [*(a1 + 32) storageIDs];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(*(&v51 + 1) + 8 * i) unsignedIntValue] == -17958194)
          {
            __ICOSLogCreate();
            v23 = @"access";
            if ([@"access" length] >= 0x15)
            {
              v24 = [@"access" substringWithRange:{0, 18}];
              v23 = [v24 stringByAppendingString:@".."];
            }

            v25 = [NSString stringWithFormat:@"containsAccessRestrictedAppleDeviceStorage"];
            v26 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v23;
              v28 = v26;
              v29 = [(__CFString *)v23 UTF8String];
              *buf = 136446466;
              v57 = v29;
              v58 = 2114;
              v59 = v25;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            a1 = v10;
            [*(v10 + 32) setDeviceIsPairedWithThisHost:0];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v20);
    }

    __ICOSLogCreate();
    v30 = @"access";
    if ([@"access" length] >= 0x15)
    {
      v31 = [@"access" substringWithRange:{0, 18}];
      v30 = [v31 stringByAppendingString:@".."];
    }

    v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"deviceIsPairedWithThisHost: %d", [*(a1 + 32) deviceIsPairedWithThisHost]);
    v33 = _gICOSLog;
    v8 = v48;
    v6 = v49;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v30;
      v35 = v33;
      v36 = [(__CFString *)v30 UTF8String];
      *buf = 136446466;
      v57 = v36;
      v58 = 2114;
      v59 = v32;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v5 = v50;
  }

  if ([*(a1 + 32) deviceIsPasscodeLocked])
  {
    v37 = 1;
  }

  else
  {
    v37 = [*(a1 + 32) deviceIsPairedWithThisHost] ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v37;
  v38 = *(*(*(a1 + 48) + 8) + 24);
  __ICOSLogCreate();
  v39 = [@"trust" length];
  if (v38 == 1)
  {
    if (v39 < 0x15)
    {
      v41 = @"trust";
    }

    else
    {
      v40 = [@"trust" substringWithRange:{0, 18}];
      v41 = [v40 stringByAppendingString:@".."];
    }

    v43 = [NSString stringWithFormat:@"Setting self.needToReopenSession = YES"];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_41:
      v45 = v41;
      v46 = v44;
      v47 = [(__CFString *)v41 UTF8String];
      *buf = 136446466;
      v57 = v47;
      v58 = 2114;
      v59 = v43;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v39 < 0x15)
    {
      v41 = @"trust";
    }

    else
    {
      v42 = [@"trust" substringWithRange:{0, 18}];
      v41 = [v42 stringByAppendingString:@".."];
    }

    v43 = [NSString stringWithFormat:@"Setting self.needToReopenSession = NO"];
    v44 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }
  }

  [*(a1 + 32) setNeedToReopenSession:v38];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000CB9C(uint64_t a1)
{
  [*(a1 + 32) notifyDeviceReady:0];
  v64 = a1;
  v2 = [*(a1 + 32) storages];
  v3 = [v2 copy];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v3;
  v58 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v58)
  {
    v57 = *v75;
    v4 = &CopyArrayOfHandlesFromBufferMaxSize_ptr;
    do
    {
      for (i = 0; i != v58; i = i + 1)
      {
        if (*v75 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v74 + 1) + 8 * i);
        v7 = [v6 indexedFolders];
        if (v7)
        {
          v8 = objc_autoreleasePoolPush();
          v9 = [v4[193] array];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v10 = v7;
          v11 = v7;
          v12 = [v11 countByEnumeratingWithState:&v70 objects:v89 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v71;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v71 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v70 + 1) + 8 * j) cameraItemProxy];
                [v9 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v70 objects:v89 count:16];
            }

            while (v13);
          }

          v87 = @"ICCameraItemProxyArray";
          v17 = [v9 copy];
          v88 = v17;
          v18 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];

          v19 = [*(v64 + 32) delegate];
          [v19 sendAddedItemsNotification:v18 toConnections:*(v64 + 40)];

          [v9 removeAllObjects];
          objc_autoreleasePoolPop(v8);
          v7 = v10;
          v4 = &CopyArrayOfHandlesFromBufferMaxSize_ptr;
        }

        v20 = [v6 indexedFiles];
        if (v20)
        {
          context = objc_autoreleasePoolPush();
          v21 = [v4[193] array];
          v62 = i;
          if (*(v64 + 48) == -1)
          {
            [v20 objectEnumerator];
          }

          else
          {
            [v20 reverseObjectEnumerator];
          }
          v22 = ;
          v60 = v20;
          v61 = v7;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v66 objects:v86 count:16];
          v63 = v23;
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = 0;
            v28 = *v67;
            do
            {
              v29 = 0;
              v65 = v25;
              do
              {
                if (*v67 != v28)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v66 + 1) + 8 * v29);
                v31 = [v30 relatedUUID];
                v32 = v31;
                if (v27)
                {
                  if ([v27 compare:v31])
                  {
                    v33 = [v32 copy];

                    if (v26 < 1000)
                    {
                      ++v26;
                      v27 = v33;
                    }

                    else
                    {
                      v84 = @"ICCameraItemProxyArray";
                      v34 = [v21 copy];
                      v85 = v34;
                      v35 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];

                      __ICOSLogCreate();
                      v36 = @"Flushing";
                      if ([@"Flushing" length] >= 0x15)
                      {
                        v37 = [@"Flushing" substringWithRange:{0, 18}];
                        v36 = [v37 stringByAppendingString:@".."];
                      }

                      v38 = v21;
                      v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"FlushCount: %lu", [v21 count]);
                      v40 = _gICOSLog;
                      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
                      {
                        v41 = v36;
                        v42 = v40;
                        v43 = [(__CFString *)v36 UTF8String];
                        *buf = 136446466;
                        v81 = v43;
                        v82 = 2114;
                        v83 = v39;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
                      }

                      v44 = [*(v64 + 32) delegate];
                      [v44 sendAddedItemsNotification:v35 toConnections:*(v64 + 40)];

                      v21 = v38;
                      [v38 removeAllObjects];

                      v26 = 0;
                      v27 = v33;
                      v23 = v63;
                    }

                    v25 = v65;
                  }
                }

                else
                {
                  v27 = [v31 copy];
                }

                v45 = [v30 cameraItemProxy];
                [v21 addObject:v45];

                v29 = v29 + 1;
              }

              while (v25 != v29);
              v25 = [v23 countByEnumeratingWithState:&v66 objects:v86 count:16];
            }

            while (v25);
          }

          else
          {
            v27 = 0;
          }

          v78 = @"ICCameraItemProxyArray";
          v46 = [v21 copy];
          v79 = v46;
          v47 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];

          __ICOSLogCreate();
          v48 = @"Flushing";
          if ([@"Flushing" length] >= 0x15)
          {
            v49 = [@"Flushing" substringWithRange:{0, 18}];
            v48 = [v49 stringByAppendingString:@".."];
          }

          v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"FlushCount: %lu", [v21 count]);
          v51 = _gICOSLog;
          v4 = &CopyArrayOfHandlesFromBufferMaxSize_ptr;
          i = v62;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v52 = v48;
            v53 = v51;
            v54 = [(__CFString *)v48 UTF8String];
            *buf = 136446466;
            v81 = v54;
            v82 = 2114;
            v83 = v50;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          v55 = [*(v64 + 32) delegate];
          [v55 sendAddedItemsNotification:v47 toConnections:*(v64 + 40)];

          objc_autoreleasePoolPop(context);
          v20 = v60;
          v7 = v61;
        }
      }

      v58 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v58);
  }
}

void sub_100010BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100010BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 + 536870208) <= 0x2D && ((1 << (a2 + 64)) & 0x280002000001) != 0 || a2 == -536854453)
    {
      __ICOSLogCreate();
      v7 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v8 = [@"HostUSB" substringWithRange:{0, 18}];
        v7 = [v8 stringByAppendingString:@".."];
      }

      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"readInterruptData: (disconnected) 0x%x:0x%x", [v6 locationID], a2);
      v10 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v7;
        v12 = v10;
        *buf = 136446466;
        v15 = [(__CFString *)v7 UTF8String];
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [v6 setConnected:0];
    }

    else if (!a2)
    {
      if (a3)
      {
        [WeakRetained handleInterruptData:a3];
      }

      [v6 readInterruptData];
    }
  }

  return a2;
}

void sub_100010DE0(void (**a1)(void))
{
  if (a1)
  {
    a1[2]();
  }
}

void sub_100011684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_32;
  }

  if (a2 <= -536854450)
  {
    v8 = (a2 + 536870208);
    if (v8 > 0x2D)
    {
      goto LABEL_32;
    }

    if (((1 << (a2 + 64)) & 0x280002000001) != 0)
    {
      __ICOSLogCreate();
      v9 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v10 = [@"HostUSB" substringWithRange:{0, 18}];
        v9 = [v10 stringByAppendingString:@".."];
      }

      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"readBulkData: (disconnected) 0x%x:0x%x", [v7 locationID], a2);
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_10001D1F0();
      }

      [v7 setConnected:0];
      goto LABEL_32;
    }

    if (v8 != 22)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  if (a2 == -536854449 || a2 == -536850432)
  {
LABEL_20:
    __ICOSLogCreate();
    v18 = @"HostUSB";
    if ([@"HostUSB" length] >= 0x15)
    {
      v19 = [@"HostUSB" substringWithRange:{0, 18}];
      v18 = [v19 stringByAppendingString:@".."];
    }

    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"readBulkData: (timedout) 0x%x:0x%x", [v7 locationID], a2);
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_10001D1F0();
    }

    if (a2 == -536850432 || a2 == -536854449)
    {
      __ICOSLogCreate();
      v21 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v22 = [@"HostUSB" substringWithRange:{0, 18}];
        v21 = [v22 stringByAppendingString:@".."];
      }

      v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"readBulkData: (cleared pipestall) 0x%x:0x%x", [v7 locationID], a2);
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_10001D1F0();
      }

      [v7 performSelector:"clearBulkInPipeStall"];
    }

    [v7 setTimedOut:1];
    goto LABEL_32;
  }

  if (!a2)
  {
    [WeakRetained handleBulkData:a3 result:0 forTxID:*(a1 + 32)];
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v12 = @"HostUSB";
      if ([@"HostUSB" length] >= 0x15)
      {
        v13 = [@"HostUSB" substringWithRange:{0, 18}];
        v12 = [v13 stringByAppendingString:@".."];
      }

      v14 = [NSString stringWithFormat:@"readBulkData: %lu bytes | continue: %d", a3, *(*(*(a1 + 48) + 8) + 24)];
      v15 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v12;
        v17 = v15;
        *buf = 136446466;
        v26 = [(__CFString *)v12 UTF8String];
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

LABEL_32:
  dispatch_semaphore_signal(*(a1 + 40));

  return a2;
}

void sub_100011B88(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000128B8;
    block[3] = &unk_10002CA38;
    v6 = a2;
    block[4] = a1;
    block[5] = a3;
    v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v4 = dispatch_get_global_queue(33, 0);
    dispatch_async(v4, v3);
  }
}

void sub_1000128B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(v1 + 2))(v1, *(a1 + 48), *(a1 + 40));
}

void sub_10001292C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10001294C(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

id sub_100012964()
{

  return [v0 UTF8String];
}

void sub_10001297C(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_1000138F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_100013954(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) transport];
  v8 = [v7 connected];

  if ((v8 & 1) == 0)
  {
    *a4 = 1;
  }

  if (*(a1 + 64) == 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = [*(a1 + 32) objectInfo:{objc_msgSend(v6, "unsignedIntValue")}];
  }

  v10 = v9;
  if (v9)
  {
    if ([v9 objectFormat] == 12289)
    {
      v11 = *(a1 + 40);
LABEL_11:
      [v11 addObject:v10];
      goto LABEL_15;
    }

    if (*(a1 + 64))
    {
      v11 = *(a1 + 48);
      goto LABEL_11;
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100013ACC;
    v14[3] = &unk_10002CA58;
    v14[4] = *(a1 + 56);
    v12 = objc_retainBlock(v14);
    v13 = [*(a1 + 48) indexOfObject:v10 inSortedRange:0 options:objc_msgSend(*(a1 + 48) usingComparator:{"count"), 1024, v12}];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 48) insertObject:v10 atIndex:v13];
    }
  }

LABEL_15:
}

uint64_t sub_100013ACC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 intervalSince1970];
  v7 = [v5 intervalSince1970];

  if (v7 > v6)
  {
    return *(a1 + 32);
  }

  else
  {
    return -*(a1 + 32);
  }
}

uint64_t sub_100013B28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013B40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) transport];
  v8 = [v7 connected];

  if ((v8 & 1) == 0)
  {
    *a4 = 1;
  }

  v9 = v6;
  v10 = [v9 parentObject];
  v11 = [v9 filename];
  v12 = [v11 isEqualToString:@"DCIM"];

  if (v10 && !((v10 == [*(a1 + 40) storageID]) | v12 & 1))
  {
    v29 = [*(a1 + 40) cameraFolderWithObjectID:v10];
    if ([v29 type] == 3)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v13 = v30;

    if (v13)
    {
      goto LABEL_6;
    }

LABEL_29:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
    goto LABEL_30;
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = objc_autoreleasePoolPush();
  v15 = +[NSMutableArray array];
  v16 = [*(a1 + 40) newFolderWithObjectInfo:v9 inFolder:v13 notify:(*(a1 + 56) & 1) == 0];
  if (v16)
  {
    v31 = v14;
    v32 = v13;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = *(*(*(a1 + 48) + 8) + 40);
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [v22 parentObject];
          if (v23 == [v16 objHandle])
          {
            [v15 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v19);
    }

    [*(*(*(a1 + 48) + 8) + 40) removeObjectsInArray:v15];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v15;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v26);
    }

    v14 = v31;
    v13 = v32;
  }

  objc_autoreleasePoolPop(v14);
LABEL_30:
}

void sub_100013E60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) transport];
  v8 = [v7 connected];

  if ((v8 & 1) == 0)
  {
    *a4 = 1;
  }

  v9 = v6;
  v10 = [v9 parentObject];
  v11 = *(a1 + 40);
  if (v10)
  {
    v12 = [v11 cameraFolderWithObjectID:v10];
    if ([v12 type] == 3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v11;
    if (v14)
    {
LABEL_8:
      v15 = objc_autoreleasePoolPush();
      if ([v9 objectFormat] == 12290 || objc_msgSend(v9, "objectFormat") == 12291 || objc_msgSend(v9, "objectFormat") == 12292 || objc_msgSend(v9, "objectFormat") == 12293 || objc_msgSend(v9, "objectFormat") == 12294)
      {
        __ICOSLogCreate();
        v16 = @"objInfo";
        if ([@"objInfo" length] >= 0x15)
        {
          v17 = [@"objInfo" substringWithRange:{0, 18}];
          v16 = [v17 stringByAppendingString:@".."];
        }

        v18 = [NSString stringWithFormat:@"unknown: %@", v9];
        v19 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v16;
          v21 = v19;
          *buf = 136446466;
          v32 = [(__CFString *)v16 UTF8String];
          v33 = 2114;
          v34 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      [*(a1 + 40) newItemWithObjectInfo:v9 notify:(*(a1 + 56) & 1) == 0];
      v22 = [*(a1 + 32) transport];
      v23 = [v22 connected];

      if ((v23 & 1) == 0)
      {
        *a4 = 1;
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_27;
    }
  }

  __ICOSLogCreate();
  v24 = [v9 filename];
  if ([v24 length] >= 0x15)
  {
    v25 = [v24 substringWithRange:{0, 18}];
    v26 = [v25 stringByAppendingString:@".."];

    v24 = v26;
  }

  v27 = [NSString stringWithFormat:@"Missing Parent"];
  v28 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v24;
    v30 = v28;
    *buf = 136446466;
    v32 = [v24 UTF8String];
    v33 = 2114;
    v34 = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
LABEL_27:
}

void sub_100014E74(uint64_t a1)
{
  v2 = [PTPCameraFile alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v4 initiator];
  v6 = [(PTPCameraFile *)v2 initWithObjectInfo:v3 parent:v4 initiator:v5];

  __ICOSLogCreate();
  v7 = [NSString stringWithFormat:@"File queued: %@\n", v6];
  v8 = [v7 description];
  v9 = [NSString stringWithFormat:@"%@", v8];

  if (__ICLogTypeEnabled())
  {
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v11 = [*(a1 + 40) storage];
  [v11 addCameraFileToIndex:v6];

  v12 = [*(a1 + 40) initiator];
  v13 = [v12 delegate];

  v19 = @"ICCameraItemProxyArray";
  v14 = [(PTPCameraItem *)v6 cameraItemProxy];
  v18 = v14;
  v15 = [NSArray arrayWithObjects:&v18 count:1];
  v20 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v17 = [v13 allConnections];
  [v13 sendAddedItemsNotification:v16 toConnections:v17];
}

unint64_t sub_100015240(uint64_t a1)
{
  v1 = a1 + 12;
  if (a1 < -12)
  {
    v1 = a1 + 16395;
  }

  return (v1 & 0xFFFFFFFFFFFFC000) + 0x4000;
}

id sub_10001525C(void *a1)
{
  if (a1)
  {
    memset(&v3, 0, sizeof(v3));
    v3.tm_isdst = -1;
    strptime_l([a1 UTF8String], "%Y:%m:%d %H:%M:%S", &v3, 0);
    a1 = [NSDate dateWithTimeIntervalSince1970:mktime(&v3)];
    v1 = vars8;
  }

  return a1;
}

id sub_1000152E8(void *a1)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v1 = [a1 UTF8String];
  if (v1 && (v2 = v1, strlen(v1) >= 0xF))
  {
    sscanf(v2, "%04d%02d%02dT%02d%02d%02d", &v13 + 4, &v13, &v12 + 4, &v12, &v11 + 4, &v11);
    v4 = v13;
    v3 = HIDWORD(v13);
    v6 = v12;
    v5 = HIDWORD(v12);
    v8 = v11;
    v7 = HIDWORD(v11);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  v9 = [NSString stringWithFormat:@"%04d:%02d:%02d %02d:%02d:%02d", v3, v4, v5, v6, v7, v8];

  return v9;
}

void sub_1000153C0(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a1;
  v7 = [v14 objectForKey:kCGImagePropertyOrientation];
  if (!v7)
  {
    v8 = [v14 objectForKey:kCGImagePropertyTIFFOrientation];
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = &off_10002F4B0;
    }
  }

  v9 = v7;
  *a2 = v7;
  v10 = [v14 objectForKey:@"RawPixelWidth"];
  if (!v10)
  {
    v10 = [v14 objectForKey:kCGImagePropertyPixelWidth];
    if (!v10)
    {
      v10 = [v14 objectForKey:kCGImagePropertyExifPixelXDimension];
    }
  }

  v11 = v10;
  *a3 = v10;
  v12 = [v14 objectForKey:@"RawPixelHeight"];
  if (!v12)
  {
    v12 = [v14 objectForKey:kCGImagePropertyPixelHeight];
    if (!v12)
    {
      v12 = [v14 objectForKey:kCGImagePropertyExifPixelYDimension];
    }
  }

  v13 = v12;
  *a4 = v13;
}

void sub_100015560(id a1)
{
  v11 = [NSSet alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_100033890 = [v11 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];

  _objc_release_x1();
}

void sub_100015990(id a1)
{
  qword_1000338A0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100018A04(id a1)
{
  v3 = CGImageSourceCopyTypeExtensions();
  v1 = [[NSSet alloc] initWithArray:v3];
  v2 = qword_1000338D0;
  qword_1000338D0 = v1;
}

void sub_100018AF0(id a1)
{
  v3 = CGImageSourceCopyTypeExtensions();
  v1 = [[NSMutableSet alloc] initWithArray:v3];
  v2 = qword_1000338D8;
  qword_1000338D8 = v1;

  [qword_1000338D8 removeObject:@"tif"];
}

id sub_10001B378(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 + 12;
  if (a4 < -12)
  {
    v8 = a4 + 16395;
  }

  v9 = malloc_type_malloc((v8 & 0xFFFFFFFFFFFFC000) + 0x4000, 0x9F77EA0uLL);
  v10 = [a1 readStream:v9 size:a4 offset:a3];
  memcpy(a2, v9 + 12, v10);
  free(v9);
  return v10;
}

void sub_10001BF84(void *a1, io_iterator_t a2)
{
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      properties = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v7 = Mutable;
      if (IORegistryEntryCreateCFProperties(v5, &properties, 0, 0))
      {
        break;
      }

      Value = CFDictionaryGetValue(properties, @"locationID");
      if (!Value)
      {
        break;
      }

      if (v3)
      {
        v9 = [Value unsignedLongLongValue];
        parent = 0;
        v10 = +[NSUUID UUID];
        v11 = [v10 UUIDString];

        if (!IORegistryEntryGetParentEntry(v5, "IOService", &parent))
        {
          if (parent)
          {
            v16 = 0;
            if (!IORegistryEntryCreateCFProperties(parent, &v16, kCFAllocatorDefault, 0))
            {
              v12 = v16;
              v13 = [v3 uuidStringForDeviceProperties:v16];

              v11 = v13;
            }
          }
        }

        v14 = [NSString stringWithFormat:@"%llu", v9];
        v15 = [NSString stringWithFormat:@"LOC:%llu", v9];
        [v3 notifyClientDeviceAdded:v14 uuidString:v11 deviceName:v15];
      }

      CFRelease(properties);
      CFRelease(v7);
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }
}

void sub_10001C160(void *a1, io_iterator_t a2)
{
  v3 = a1;
  for (i = IOIteratorNext(a2); i; i = IOIteratorNext(a2))
  {
    properties = 0;
    if (!IORegistryEntryCreateCFProperties(i, &properties, kCFAllocatorDefault, 0))
    {
      v5 = properties;
      v6 = [(__CFDictionary *)properties objectForKey:@"locationID"];
      if (v3)
      {
        __ICOSLogCreate();
        v7 = [v3 managedObjectName];
        if ([v7 length] >= 0x15)
        {
          v8 = [v7 substringWithRange:{0, 18}];
          v9 = [v8 stringByAppendingString:@".."];

          v7 = v9;
        }

        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"_USBPTPInterfaceDeath | locID - 0x%08llX", [v6 unsignedLongLongValue]);
        v11 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v7;
          v13 = v11;
          v14 = [v7 UTF8String];
          *buf = 136446466;
          v18 = v14;
          v19 = 2114;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v6 unsignedLongLongValue]);
        [v3 notifyClientDeviceRemoved:v15];
      }
    }
  }
}

void sub_10001C854(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = @"cameraRest";
  if ([@"cameraRest" length] >= 0x15)
  {
    v3 = [@"cameraRest" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Resetting location: %llu", [*(a1 + 32) unsignedLongLongValue]);
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v11 = [(__CFString *)v2 UTF8String];
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [*(a1 + 32) unsignedLongLongValue]);
  [v8 notifyClientDeviceRemoved:v9];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  __ICOSLogCreate();
  v1 = @"ptpcamera[D]";
  if ([@"ptpcamera[D]" length] >= 0x15)
  {
    v2 = [@"ptpcamera[D]" substringWithRange:{0, 18}];
    v1 = [v2 stringByAppendingString:@".."];
  }

  v3 = [NSString stringWithFormat:@"%@", @"Launching ptpcamera [D]"];
  v4 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v1;
    v6 = v4;
    *buf = 136446466;
    v12 = [(__CFString *)v1 UTF8String];
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc_init(PTPRemoteCameraDeviceManager);
  [(PTPRemoteCameraDeviceManager *)v7 startUSBPTPInterfaceNotifications];
  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.ptpcamerad"];
  [v8 setDelegate:v7];
  [v8 resume];
  v9 = +[NSRunLoop currentRunLoop];
  [v9 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10001D0A8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

void sub_10001D134(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v8 = 136446466;
  v9 = [a1 UTF8String];
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", &v8, 0x16u);
}

void sub_10001D1F0()
{
  sub_10001291C();
  v2 = v1;
  v3 = v0;
  sub_100012964();
  sub_100012904();
  sub_10001292C(&_mh_execute_header, v4, v5, "%{public}20s ! %{public}@", v6, v7, v8, v9, v10);
}

void sub_10001D2B8(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", buf, 0x16u);
}

void sub_10001D360(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  sub_100012904();
  sub_10001292C(&_mh_execute_header, v6, v7, "%{public}20s ! %{public}@", v8, v9, v10, v11, v12);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}