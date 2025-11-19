@interface WiFiFindAndJoinRequest
- (BOOL)_canPerformRetry:(id)a3;
- (BOOL)_checkAndRequestChipResetIfNeeded;
- (BOOL)_runFindAndJoinOnInterface:(id)a3 outError:(id *)a4;
- (BOOL)runAsynchronouslyOnQueue:(id)a3 onInterface:(id)a4 withReply:(id)a5;
- (BOOL)runSynchronouslyOnQueue:(id)a3 onInterface:(id)a4 outError:(id *)a5;
- (WiFiFindAndJoinRequest)initWithNetworkName:(id)a3;
- (id)_printSupportedChannels;
- (id)description;
- (void)_chipResetDidComplete:(id)a3;
- (void)_populateSupportedChannels;
- (void)dealloc;
- (void)submitMetric;
@end

@implementation WiFiFindAndJoinRequest

- (WiFiFindAndJoinRequest)initWithNetworkName:(id)a3
{
  v17.receiver = self;
  v17.super_class = WiFiFindAndJoinRequest;
  v3 = a3;
  v4 = [(WiFiFindAndJoinRequest *)&v17 init];
  [(WiFiFindAndJoinRequest *)v4 setNetworkName:v3, v17.receiver, v17.super_class];

  [(WiFiFindAndJoinRequest *)v4 setChannelNumber:0];
  [(WiFiFindAndJoinRequest *)v4 setChannelBand:0];
  [(WiFiFindAndJoinRequest *)v4 setStartedAt:0];
  [(WiFiFindAndJoinRequest *)v4 setTotalScanTime:0.0];
  [(WiFiFindAndJoinRequest *)v4 setTotalJoinTime:0.0];
  [(WiFiFindAndJoinRequest *)v4 setTimeout:60.0];
  [(WiFiFindAndJoinRequest *)v4 setChipResetWaiter:0];
  v5 = +[NSMutableArray array];
  [(WiFiFindAndJoinRequest *)v4 setScanFailureList:v5];

  v6 = +[NSMutableArray array];
  [(WiFiFindAndJoinRequest *)v4 setJoinFailureList:v6];

  v7 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported2GHzChannels:v7];

  v8 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported5GHzChannels:v8];

  v9 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported6GHzChannels:v9];

  v10 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setScannedChannels:v10];

  v11 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setJoinCandidates:v11];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:v4 selector:"_chipResetDidComplete:" name:@"WiFiChipResetCompleted" object:0];

  v13 = [[CWFInterface alloc] initWithServiceType:1];
  [(WiFiFindAndJoinRequest *)v4 setInterface:v13];

  v14 = [(WiFiFindAndJoinRequest *)v4 interface];

  if (v14)
  {
    v15 = [(WiFiFindAndJoinRequest *)v4 interface];
    [v15 activate];
  }

  else
  {
    sub_10015703C();
    v15 = v4;
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"< %@:%p ", v4, self];

  v6 = [(WiFiFindAndJoinRequest *)self networkName];
  [v5 appendFormat:@"SSID='%@' ", v6];

  [v5 appendFormat:@"Channel=%d ", -[WiFiFindAndJoinRequest channelNumber](self, "channelNumber")];
  [v5 appendFormat:@"Band=%d ", -[WiFiFindAndJoinRequest channelBand](self, "channelBand")];
  [(WiFiFindAndJoinRequest *)self timeout];
  [v5 appendFormat:@"Timeout=%d ", v7];
  [v5 appendString:@">"];

  return v5;
}

- (void)dealloc
{
  [(WiFiFindAndJoinRequest *)self setInterface:0];
  v3.receiver = self;
  v3.super_class = WiFiFindAndJoinRequest;
  [(WiFiFindAndJoinRequest *)&v3 dealloc];
}

- (BOOL)_canPerformRetry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 code] == 82)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(WiFiFindAndJoinRequest *)self startedAt];
    if (v7)
    {
      v8 = +[NSDate date];
      v9 = [(WiFiFindAndJoinRequest *)self startedAt];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;
      [(WiFiFindAndJoinRequest *)self timeout];
      v13 = v11 > v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    v15 = [v14 count];
    v16 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v17 = [v16 count];

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    v21 = v15 + v17;

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v6 = (v21 < 0xB) & ~v13;
  }

  return v6;
}

- (BOOL)_checkAndRequestChipResetIfNeeded
{
  [(WiFiFindAndJoinRequest *)self timeout];
  v4 = v3;
  v5 = +[NSDate date];
  v6 = [(WiFiFindAndJoinRequest *)self startedAt];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
  if (v9 || (v10 = v4 - v8, v10 < 0.0))
  {

    return 1;
  }

  v11 = [(WiFiFindAndJoinRequest *)self scanFailureList];
  v12 = [v11 count];
  v13 = [(WiFiFindAndJoinRequest *)self joinFailureList];
  v14 = &v12[[v13 count]];

  if (v14 < 3)
  {
    return 1;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    [v19 count];
    v20 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    [v20 count];
    _os_log_send_and_compose_impl();
  }

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 postNotificationName:@"WiFiChipResetRequested" object:0 userInfo:0];

  v22 = dispatch_semaphore_create(0);
  [(WiFiFindAndJoinRequest *)self setChipResetWaiter:v22];

  v23 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
  v24 = dispatch_time(0, (v10 * 1000000000.0));
  v25 = dispatch_semaphore_wait(v23, v24);

  v26 = CWFGetOSLog();
  v27 = v26;
  if (!v25)
  {
    if (v26)
    {
      v29 = CWFGetOSLog();
    }

    else
    {
      v29 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    return 1;
  }

  if (v26)
  {
    v28 = CWFGetOSLog();
  }

  else
  {
    v28 = &_os_log_default;
    v30 = &_os_log_default;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

  return 0;
}

- (void)_chipResetDidComplete:(id)a3
{
  v4 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];

  if (v4)
  {
    v5 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
    dispatch_semaphore_signal(v5);
  }
}

- (void)_populateSupportedChannels
{
  v3 = [(WiFiFindAndJoinRequest *)self interface];
  v4 = [v3 supportedChannelsWithCountryCode:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if ([v10 width] == 20)
        {
          if ([v10 band] == 1)
          {
            v11 = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
            goto LABEL_13;
          }

          if ([v10 band] == 2)
          {
            v11 = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
            goto LABEL_13;
          }

          if ([v10 band] == 3)
          {
            v11 = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
LABEL_13:
            v12 = v11;
            [v11 addObject:v10];
          }

          else
          {
            v13 = CWFGetOSLog();
            if (v13)
            {
              v12 = CWFGetOSLog();
            }

            else
            {
              v14 = &_os_log_default;
              v12 = &_os_log_default;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v15 = [v10 band];
              v16 = [v10 channel];
              v24 = 136315650;
              v25 = "[WiFiFindAndJoinRequest _populateSupportedChannels]";
              v26 = 1024;
              v27 = v15;
              v28 = 1024;
              v29 = v16;
              LODWORD(v19) = 24;
              v18 = &v24;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v17 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (id)_printSupportedChannels
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"6GHz:(");
  v4 = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
  v5 = [v4 allObjects];
  v6 = [v5 valueForKey:@"description"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v7];

  [v3 appendFormat:@", "]);
  objc_msgSend(v3, "appendFormat:", @"5GHz:(");
  v8 = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
  v9 = [v8 allObjects];
  v10 = [v9 valueForKey:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v11];

  [v3 appendFormat:@", "]);
  objc_msgSend(v3, "appendFormat:", @"2.4GHz:(");
  v12 = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
  v13 = [v12 allObjects];
  v14 = [v13 valueForKey:@"description"];
  v15 = [v14 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v15];

  [v3 appendFormat:@""]);

  return v3;
}

- (BOOL)_runFindAndJoinOnInterface:(id)a3 outError:(id *)a4
{
  v118 = a3;
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableSet set];
  v8 = [(WiFiFindAndJoinRequest *)self networkName];

  if (!v8)
  {
    v111 = CWFGetOSLog();
    if (v111)
    {
      v95 = CWFGetOSLog();
    }

    else
    {
      v95 = &_os_log_default;
      v112 = &_os_log_default;
    }

    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v132 = 136315138;
      v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      LODWORD(v115) = 12;
      v113 = &v132;
      _os_log_send_and_compose_impl();
    }

    v119 = 0;
    v120 = 0;
    v125 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_92;
  }

  [(WiFiFindAndJoinRequest *)self _populateSupportedChannels];
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  v117 = a4;

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(WiFiFindAndJoinRequest *)self _printSupportedChannels];
    v132 = 136315650;
    v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    v134 = 2112;
    v135 = self;
    v136 = 2112;
    *v137 = v12;
    LODWORD(v115) = 32;
    v113 = &v132;
    _os_log_send_and_compose_impl();
  }

  if (![(WiFiFindAndJoinRequest *)self channelNumber])
  {
    goto LABEL_24;
  }

  if (![(WiFiFindAndJoinRequest *)self channelBand]&& [(WiFiFindAndJoinRequest *)self channelNumber]<= 0xE)
  {
    [(WiFiFindAndJoinRequest *)self setChannelBand:2];
  }

  v13 = [(WiFiFindAndJoinRequest *)self channelBand:v113];
  if (v13 == 2)
  {
    goto LABEL_22;
  }

  if (v13 == 6)
  {
    v14 = 3;
    goto LABEL_23;
  }

  if (v13 != 5)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [(WiFiFindAndJoinRequest *)self channelBand];
      v132 = 136315394;
      v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      v134 = 1024;
      LODWORD(v135) = v18;
      LODWORD(v116) = 18;
      v114 = &v132;
      _os_log_send_and_compose_impl();
    }

LABEL_22:
    v14 = 1;
    goto LABEL_23;
  }

  v14 = 2;
LABEL_23:
  v19 = [CWFChannel channelWithNumber:[(WiFiFindAndJoinRequest *)self channelNumber:v114] band:v14 width:20];
  [v6 addObject:v19];

LABEL_24:
  v119 = 0;
  v120 = 0;
  v125 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  for (i = v6; ; [i removeAllObjects])
  {
    v23 = v21;
    v24 = v125;
    v25 = objc_alloc_init(CWFScanParameters);

    v26 = [(WiFiFindAndJoinRequest *)self networkName];
    [v25 setSSID:v26];

    [v25 setBSSType:3];
    [v25 setPHYMode:1];
    [v25 setNumberOfScans:1];
    [v25 setIncludeHiddenNetworks:1];
    if ([v6 count])
    {
      v27 = v6;
    }

    else
    {
      v27 = 0;
    }

    [v25 setChannels:{v27, v113, v115}];
    [v25 setScanFlags:2592];
    [v25 setScanType:1];
    v125 = +[NSDate date];

    v28 = [(WiFiFindAndJoinRequest *)self interface];
    v131 = 0;
    v29 = [v28 performScanWithParameters:v25 error:&v131];
    v30 = v131;

    if (v30)
    {
      v31 = [(WiFiFindAndJoinRequest *)self scanFailureList];
      [v31 addObject:v30];
LABEL_33:

      goto LABEL_34;
    }

    if (!v29 || ![v29 count])
    {
      v31 = [(WiFiFindAndJoinRequest *)self scanFailureList];
      v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      [v31 addObject:v32];

      goto LABEL_33;
    }

LABEL_34:
    v122 = v25;
    v123 = v30;
    v33 = +[NSDate date];
    [v33 timeIntervalSinceDate:v125];
    v35 = v34;
    [(WiFiFindAndJoinRequest *)self totalScanTime];
    [(WiFiFindAndJoinRequest *)self setTotalScanTime:v35 + v36];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v20 = v29;
    v37 = [v20 countByEnumeratingWithState:&v127 objects:v140 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v128;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v128 != v39)
          {
            objc_enumerationMutation(v20);
          }

          v41 = *(*(&v127 + 1) + 8 * j);
          v42 = [v41 networkName];
          v43 = [(WiFiFindAndJoinRequest *)self networkName];
          v44 = [v42 isEqualToString:v43];

          if (v44)
          {
            [v7 addObject:v41];
          }
        }

        v38 = [v20 countByEnumeratingWithState:&v127 objects:v140 count:16];
      }

      while (v38);
    }

    v45 = CWFGetOSLog();
    if (v45)
    {
      v46 = CWFGetOSLog();
    }

    else
    {
      v46 = &_os_log_default;
      v47 = &_os_log_default;
    }

    v6 = i;
    v22 = v123;

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v48 = [i valueForKey:@"description"];
      v49 = [v48 componentsJoinedByString:{@", "}];
      v50 = [v20 count];
      v51 = [v7 count];
      v132 = 136316162;
      v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      v134 = 2112;
      v135 = v49;
      v136 = 1024;
      *v137 = v50;
      v22 = v123;
      *&v137[4] = 1024;
      *&v137[6] = v51;
      v138 = 2112;
      v139 = v123;
      LODWORD(v115) = 44;
      v113 = &v132;
      _os_log_send_and_compose_impl();
    }

    v21 = v122;
    if (![v7 count])
    {
      break;
    }

    if ([i count])
    {
      v58 = [(WiFiFindAndJoinRequest *)self scannedChannels];
      [v58 addObjectsFromArray:i];
    }

    v59 = [(WiFiFindAndJoinRequest *)self joinCandidates:v113];
    v60 = [v7 allObjects];
    [v59 addObjectsFromArray:v60];

    while (1)
    {
      v61 = [(WiFiFindAndJoinRequest *)self joinCandidates:v113];
      v62 = [v61 count];

      if (!v62)
      {
        break;
      }

      v124 = v22;
      v63 = v119;
      v64 = objc_alloc_init(CWFAssocParameters);

      v65 = [(WiFiFindAndJoinRequest *)self joinCandidates];
      v66 = [v65 allObjects];
      v67 = [v66 firstObject];
      [v64 setScanResult:v67];

      [v64 setForceBSSID:1];
      v68 = [(WiFiFindAndJoinRequest *)self password];
      [v64 setPassword:v68];

      [v64 setRememberUponSuccessfulAssociation:1];
      [v64 setKnownNetworkProfile:0];
      v119 = +[NSDate date];

      v69 = [(WiFiFindAndJoinRequest *)self interface];
      v126 = 0;
      v120 = v64;
      v70 = [v69 associateWithParameters:v64 error:&v126];
      v22 = v126;

      if (v22)
      {
        v71 = [(WiFiFindAndJoinRequest *)self joinFailureList];
        [v71 addObject:v22];
      }

      else
      {
        if (v70)
        {
          goto LABEL_66;
        }

        v71 = [(WiFiFindAndJoinRequest *)self joinFailureList];
        v72 = [NSError errorWithDomain:NSPOSIXErrorDomain code:97 userInfo:0];
        [v71 addObject:v72];
      }

LABEL_66:
      v73 = +[NSDate date];
      [v73 timeIntervalSinceDate:v119];
      v75 = v74;
      [(WiFiFindAndJoinRequest *)self totalJoinTime];
      [(WiFiFindAndJoinRequest *)self setTotalJoinTime:v75 + v76];

      v77 = CWFGetOSLog();
      if (v77)
      {
        v78 = CWFGetOSLog();
      }

      else
      {
        v78 = &_os_log_default;
        v79 = &_os_log_default;
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v80 = [v120 scanResult];
        v132 = 136315650;
        v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        v134 = 2112;
        v135 = v80;
        v136 = 2112;
        *v137 = v22;
        LODWORD(v115) = 32;
        v113 = &v132;
        _os_log_send_and_compose_impl();
      }

      v81 = [(WiFiFindAndJoinRequest *)self joinCandidates];
      v82 = [v120 scanResult];
      [v81 removeObject:v82];

      if (v70)
      {
        v104 = CWFGetOSLog();
        if (v104)
        {
          v105 = CWFGetOSLog();
        }

        else
        {
          v105 = &_os_log_default;
          v107 = &_os_log_default;
        }

        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v108 = [(WiFiFindAndJoinRequest *)self networkName];
          v132 = 136315650;
          v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
          v134 = 2112;
          v135 = v108;
          v136 = 2112;
          *v137 = v22;
          LODWORD(v115) = 32;
          v113 = &v132;
          _os_log_send_and_compose_impl();
        }

        v109 = [v120 scanResult];
        [(WiFiFindAndJoinRequest *)self setJoinedNetwork:v109];

        v102 = 1;
        goto LABEL_100;
      }

      v83 = [(WiFiFindAndJoinRequest *)self joinFailureList];
      v84 = [v83 lastObject];
      v85 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:v84];

      if (!v85)
      {
        a4 = v117;
        goto LABEL_93;
      }

      v86 = CWFGetOSLog();
      if (v86)
      {
        v87 = CWFGetOSLog();
      }

      else
      {
        v87 = &_os_log_default;
        v88 = &_os_log_default;
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v132 = 136315394;
        v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        v134 = 2112;
        v135 = v22;
        LODWORD(v115) = 22;
        v113 = &v132;
        _os_log_send_and_compose_impl();
      }
    }

    v89 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v90 = [v89 lastObject];
    v91 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:v90];

    if (!v91)
    {
      v106 = CWFGetOSLog();
      a4 = v117;
      if (v106)
      {
        v95 = CWFGetOSLog();
      }

      else
      {
        v95 = &_os_log_default;
        v110 = &_os_log_default;
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v132 = 136315138;
        v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        LODWORD(v115) = 12;
        v113 = &v132;
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    [(WiFiFindAndJoinRequest *)self _checkAndRequestChipResetIfNeeded];
    v92 = CWFGetOSLog();
    if (v92)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = &_os_log_default;
      v93 = &_os_log_default;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v132 = 136315138;
      v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      LODWORD(v115) = 12;
      v113 = &v132;
      goto LABEL_55;
    }

LABEL_56:
  }

  v52 = [(WiFiFindAndJoinRequest *)self scanFailureList];
  v53 = [v52 lastObject];
  v54 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:v53];

  if (v54)
  {
    [(WiFiFindAndJoinRequest *)self _checkAndRequestChipResetIfNeeded];
    v55 = CWFGetOSLog();
    if (v55)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = &_os_log_default;
      v57 = &_os_log_default;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v132 = 136315138;
      v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      LODWORD(v115) = 12;
      v113 = &v132;
LABEL_55:
      _os_log_send_and_compose_impl();
    }

    goto LABEL_56;
  }

  v94 = CWFGetOSLog();
  a4 = v117;
  if (v94)
  {
    v95 = CWFGetOSLog();
  }

  else
  {
    v95 = &_os_log_default;
    v96 = &_os_log_default;
  }

  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    v132 = 136315138;
    v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    LODWORD(v115) = 12;
    v113 = &v132;
LABEL_91:
    _os_log_send_and_compose_impl();
  }

LABEL_92:

LABEL_93:
  v97 = CWFGetOSLog();
  if (v97)
  {
    v98 = CWFGetOSLog();
  }

  else
  {
    v98 = &_os_log_default;
    v99 = &_os_log_default;
  }

  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
    [(WiFiFindAndJoinRequest *)self networkName];
    v101 = v100 = a4;
    v132 = 136315650;
    v133 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    v134 = 2112;
    v135 = v101;
    v136 = 2112;
    *v137 = v22;
    LODWORD(v115) = 32;
    v113 = &v132;
    _os_log_send_and_compose_impl();

    a4 = v100;
  }

  v102 = 0;
  if (a4)
  {
    *a4 = [(WiFiFindAndJoinRequest *)v22 copy];
  }

LABEL_100:
  [(WiFiFindAndJoinRequest *)self submitMetric:v113];

  return v102;
}

- (void)submitMetric
{
  if (&_AnalyticsSendEventLazy)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (v4)
    {
      v5 = @"Success";
    }

    else
    {
      v5 = @"Fail";
    }

    [v3 setObject:v5 forKeyedSubscript:@"Status"];

    v6 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
    if (v6)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [v3 setObject:v7 forKeyedSubscript:@"DidPerformChipReset"];

    v8 = +[NSDate date];
    v9 = [(WiFiFindAndJoinRequest *)self startedAt];
    [v8 timeIntervalSinceDate:v9];
    v11 = [NSNumber numberWithUnsignedLong:(v10 * 1000.0)];
    [v3 setObject:v11 forKeyedSubscript:@"CompletionTimeMillisecs"];

    [(WiFiFindAndJoinRequest *)self totalScanTime];
    v13 = [NSNumber numberWithUnsignedLong:(v12 * 1000.0)];
    [v3 setObject:v13 forKeyedSubscript:@"ScanTimeMillisecs"];

    [(WiFiFindAndJoinRequest *)self totalJoinTime];
    v15 = [NSNumber numberWithUnsignedLong:(v14 * 1000.0)];
    [v3 setObject:v15 forKeyedSubscript:@"JoinTimeMillisecs"];

    v16 = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
    [v3 setObject:v17 forKeyedSubscript:@"Supported2GHzChannelCount"];

    v18 = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
    [v3 setObject:v19 forKeyedSubscript:@"Supported5GHzChannelCount"];

    v20 = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
    [v3 setObject:v21 forKeyedSubscript:@"Supported6GHzChannelCount"];

    v22 = [(WiFiFindAndJoinRequest *)self scannedChannels];
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
    [v3 setObject:v23 forKeyedSubscript:@"ScannedChannelCount"];

    v24 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 count]);
    [v3 setObject:v25 forKeyedSubscript:@"ScanFailureCount"];

    v26 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 count]);
    [v3 setObject:v27 forKeyedSubscript:@"JoinFailureCount"];

    v28 = [NSNumber numberWithUnsignedInteger:[(WiFiFindAndJoinRequest *)self channelNumber]];
    [v3 setObject:v28 forKeyedSubscript:@"RequestedChannel"];

    v29 = [NSNumber numberWithUnsignedInteger:[(WiFiFindAndJoinRequest *)self channelBand]];
    [v3 setObject:v29 forKeyedSubscript:@"RequestedBand"];

    v30 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (v30)
    {
      v31 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
      v32 = [v31 channel];
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 channel]);
      [v3 setObject:v33 forKeyedSubscript:@"JoinedChannel"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinedChannel"];
    }

    v34 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (v34)
    {
      v35 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
      v36 = [v35 channel];
      v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v36 band]);
      [v3 setObject:v37 forKeyedSubscript:@"JoinedBand"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinedBand"];
    }

    v38 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    if ([v38 count])
    {
      v39 = [(WiFiFindAndJoinRequest *)self scanFailureList];
      v40 = [v39 valueForKey:@"description"];
      v41 = [v40 componentsJoinedByString:{@", "}];
      [v3 setObject:v41 forKeyedSubscript:@"ScanFailures"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"ScanFailures"];
    }

    v42 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    if ([v42 count])
    {
      v43 = [(WiFiFindAndJoinRequest *)self joinFailureList];
      v44 = [v43 valueForKey:@"description"];
      v45 = [v44 componentsJoinedByString:{@", "}];
      [v3 setObject:v45 forKeyedSubscript:@"JoinFailures"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinFailures"];
    }

    v46 = CWFGetOSLog();
    if (v46)
    {
      v47 = CWFGetOSLog();
    }

    else
    {
      v47 = &_os_log_default;
      v48 = &_os_log_default;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v50 = v3;
    v49 = v3;
    AnalyticsSendEventLazy();
  }
}

- (BOOL)runSynchronouslyOnQueue:(id)a3 onInterface:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100002B30;
  v18[4] = sub_100006750;
  v19 = 0;
  v10 = +[NSDate date];
  [(WiFiFindAndJoinRequest *)self setStartedAt:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E358;
  block[3] = &unk_100260610;
  block[4] = self;
  v14 = v9;
  v15 = &v20;
  v16 = v18;
  v17 = a5;
  v11 = v9;
  dispatch_sync(v8, block);
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return self;
}

- (BOOL)runAsynchronouslyOnQueue:(id)a3 onInterface:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSDate date];
  [(WiFiFindAndJoinRequest *)self setStartedAt:v11];

  v12 = dispatch_get_global_queue(0, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006E514;
  v17[3] = &unk_100260660;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v17);

  return 1;
}

@end