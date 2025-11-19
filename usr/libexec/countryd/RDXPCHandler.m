@interface RDXPCHandler
- (RDXPCHandler)init;
- (void)clearStatusSharedWithPeers;
- (void)createCacheDirAtPath:(id)a3;
- (void)createNewDataCache;
- (void)ping;
- (void)shareStatusWithPeers;
- (void)triggerUpdateToEligibilityEngine;
- (void)update:(int64_t)a3 withCountryCode:(id)a4;
- (void)update:(int64_t)a3 withDict:(id)a4;
- (void)update:(int64_t)a3 withListOfCountryCodes:(id)a4;
- (void)updatePeer:(id)a3 withCountryCode:(id)a4 priority:(int)a5 andTimestamp:(id)a6;
- (void)updatePeer:(id)a3 withEstimate:(id)a4;
- (void)updatePeer:(id)a3 withInfo:(id)a4;
@end

@implementation RDXPCHandler

- (void)createNewDataCache
{
  dataCache = self->_dataCache;
  self->_dataCache = 0;

  v4 = objc_alloc_init(RDCachedData);
  v5 = self->_dataCache;
  self->_dataCache = v4;

  v6 = self->_dataCache;

  [(RDCachedData *)v6 saveCache];
}

- (RDXPCHandler)init
{
  v9.receiver = self;
  v9.super_class = RDXPCHandler;
  v2 = [(RDXPCHandler *)&v9 init];
  if (v2)
  {
    v3 = +[RDCachedData loadCache];
    dataCache = v2->_dataCache;
    v2->_dataCache = v3;

    if (!v3)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v5 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        _os_log_impl(&dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Cache load failed, perhaps because it was never set before. Starting a new one}", buf, 0x12u);
      }

      [(RDXPCHandler *)v2 createNewDataCache];
    }

    if (+[_TtC8countryd20RDSharerAvailability hasLocalStatusKit])
    {
      v6 = objc_alloc_init(_TtC8countryd14RDStatusSharer);
      sharer = v2->_sharer;
      v2->_sharer = v6;
    }
  }

  return v2;
}

- (void)update:(int64_t)a3 withDict:(id)a4
{
  v6 = a4;
  if (!sub_1000016F8())
  {
    goto LABEL_44;
  }

  if (!sub_100001930())
  {
    v8 = [v6 objectForKeyedSubscript:kRDUpdateKeyCountryCodes];
    v9 = [v6 objectForKeyedSubscript:kRDUpdateKeyInDisputedArea];
    v10 = [v9 BOOLValueSafe];

    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v15 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
        {
          v16 = v15;
          v24 = 68289538;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v8;
          v30 = 2114;
          v31 = objc_opt_class();
          v17 = v31;
          _os_log_impl(&dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:update from peer had malformed country codes entry, countryCodes:%{public, location:escape_only}@, class:%{public, location:escape_only}@}", &v24, 0x26u);

          if (qword_100019008 != -1)
          {
            dispatch_once(&qword_100019008, &stru_100014A98);
          }
        }

        v18 = qword_100019010;
        if (os_signpost_enabled(qword_100019010))
        {
          v19 = v18;
          v20 = objc_opt_class();
          v24 = 68289538;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v8;
          v30 = 2114;
          v31 = v20;
          v21 = v20;
          _os_signpost_emit_with_name_impl(&dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "update from peer had malformed country codes entry", "{msg%{public}.0s:update from peer had malformed country codes entry, countryCodes:%{public, location:escape_only}@, class:%{public, location:escape_only}@}", &v24, 0x26u);
        }

        goto LABEL_43;
      }
    }

    v11 = v8;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v23 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 68289282;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ServingCell info update, countryCodes:%{public, location:escape_only}@}", &v24, 0x1Cu);
        }

        v13 = [(RDXPCHandler *)self dataCache];
        [v13 setCountriesFromServingCell:v11];
        goto LABEL_41;
      }

      if (a3 == 3)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v14 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 68289282;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi AP info update, countryCodes:%{public, location:escape_only}@}", &v24, 0x1Cu);
        }

        v13 = [(RDXPCHandler *)self dataCache];
        [v13 setCountriesFromWiFiAPs:v11];
        goto LABEL_41;
      }
    }

    else
    {
      if (!a3)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v22 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 68289538;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v11;
          v30 = 1026;
          LODWORD(v31) = v10;
          _os_log_impl(&dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location info update, countryCodes:%{public, location:escape_only}@, isDisputed:%{public}hhd}", &v24, 0x22u);
        }

        v13 = [(RDXPCHandler *)self dataCache];
        [v13 setCountriesFromLocation:v11 isInDisputedArea:v10];
        goto LABEL_41;
      }

      if (a3 == 1)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v12 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 68289282;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:NearbyCell info update, countryCodes:%{public, location:escape_only}@}", &v24, 0x1Cu);
        }

        v13 = [(RDXPCHandler *)self dataCache];
        [v13 setCountriesFromNearbyCells:v11];
LABEL_41:
      }
    }

LABEL_43:
    goto LABEL_44;
  }

  if (qword_100019008 != -1)
  {
    dispatch_once(&qword_100019008, &stru_100014A98);
  }

  v7 = qword_100019010;
  if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updates are currently disabled, ignoring}", &v24, 0x12u);
  }

LABEL_44:
}

- (void)update:(int64_t)a3 withListOfCountryCodes:(id)a4
{
  v6 = a4;
  if (!sub_1000016F8())
  {
    goto LABEL_51;
  }

  if (sub_100001930())
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v7 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v8 = "{msg%{public}.0s:updates are currently disabled, ignoring}";
LABEL_7:
      _os_log_impl(&dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 0x12u);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v15 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 68289282;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 2114;
          v21 = v6;
          _os_log_impl(&dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:NearbyCell update, countryCodes:%{public, location:escape_only}@}", &v16, 0x1Cu);
        }

        v10 = [(RDXPCHandler *)self dataCache];
        [v10 setCountriesFromNearbyCells:v6];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_51;
        }

        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v11 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 68289282;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 2114;
          v21 = v6;
          _os_log_impl(&dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ServingCell update, countryCodes:%{public, location:escape_only}@}", &v16, 0x1Cu);
        }

        v10 = [(RDXPCHandler *)self dataCache];
        [v10 setCountriesFromServingCell:v6];
      }
    }

    else
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v13 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 68289282;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location update, countryCodes:%{public, location:escape_only}@}", &v16, 0x1Cu);
      }

      v10 = [(RDXPCHandler *)self dataCache];
      [v10 setCountriesFromLocation:v6];
    }

LABEL_50:

    goto LABEL_51;
  }

  if (a3 <= 4)
  {
    if (a3 == 3)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v14 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 68289282;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi AP update, countryCodes:%{public, location:escape_only}@}", &v16, 0x1Cu);
      }

      v10 = [(RDXPCHandler *)self dataCache];
      [v10 setCountriesFromWiFiAPs:v6];
    }

    else
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v9 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 68289282;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Geo IP update, countryCodes:%{public, location:escape_only}@}", &v16, 0x1Cu);
      }

      v10 = [(RDXPCHandler *)self dataCache];
      [v10 setCountriesFromGeoIP:v6];
    }

    goto LABEL_50;
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      goto LABEL_51;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v12 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:forcing a recompute}", &v16, 0x12u);
    }

    v10 = [(RDXPCHandler *)self dataCache];
    [v10 recompute];
    goto LABEL_50;
  }

  if (qword_100019008 != -1)
  {
    dispatch_once(&qword_100019008, &stru_100014A98);
  }

  v7 = qword_100019010;
  if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "{msg%{public}.0s:clearing state}";
    goto LABEL_7;
  }

LABEL_51:
}

- (void)update:(int64_t)a3 withCountryCode:(id)a4
{
  v6 = a4;
  if (!sub_1000016F8())
  {
    goto LABEL_41;
  }

  if (sub_100001930())
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v7 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v8 = "{msg%{public}.0s:updates are currently disabled, ignoring}";
LABEL_7:
      _os_log_impl(&dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 == 2)
      {
        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v21 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v6;
          v23 = v21;
          *buf = 68289282;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          v30 = [v6 UTF8String];
          _os_log_impl(&dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MCC update, countryCode:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        v12 = [(RDXPCHandler *)self dataCache];
        [v12 setCountryFromMCC:v6];
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_41;
        }

        if (qword_100019008 != -1)
        {
          dispatch_once(&qword_100019008, &stru_100014A98);
        }

        v9 = qword_100019010;
        if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          v11 = v9;
          *buf = 68289282;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          v30 = [v6 UTF8String];
          _os_log_impl(&dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WiFi AP update, countryCode:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        v12 = [(RDXPCHandler *)self dataCache];
        [v12 setCountryFromWiFiAPs:v6];
      }
    }

    else
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v14 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v6;
        v16 = v14;
        *buf = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = [v6 UTF8String];
        _os_log_impl(&dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location update, countryCode:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v12 = [(RDXPCHandler *)self dataCache];
      [v12 setCountryFromLocation:v6];
    }

LABEL_40:

    goto LABEL_41;
  }

  if (a3 == 4)
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v17 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v6;
      v19 = v17;
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = [v6 UTF8String];
      _os_log_impl(&dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Geo IP update, countryCode:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v12 = [(RDXPCHandler *)self dataCache];
    v24 = v6;
    v20 = [NSArray arrayWithObjects:&v24 count:1];
    [v12 setCountriesFromGeoIP:v20];

    goto LABEL_40;
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      goto LABEL_41;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v13 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(&dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:forcing a recompute}", buf, 0x12u);
    }

    v12 = [(RDXPCHandler *)self dataCache];
    [v12 recompute];
    goto LABEL_40;
  }

  if (qword_100019008 != -1)
  {
    dispatch_once(&qword_100019008, &stru_100014A98);
  }

  v7 = qword_100019010;
  if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v8 = "{msg%{public}.0s:clearing state}";
    goto LABEL_7;
  }

LABEL_41:
}

- (void)updatePeer:(id)a3 withCountryCode:(id)a4 priority:(int)a5 andTimestamp:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (sub_100001930())
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v13 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 68289026;
      v17[1] = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updates are currently disabled, ignoring}", v17, 0x12u);
    }
  }

  else
  {
    if (kRDPriorityGEOIP + 1 < a5)
    {
      v14 = kRDPriorityGEOIP + 1;
    }

    else
    {
      v14 = a5;
    }

    if (a5 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [[RDEstimate alloc] initWithCountryCode:v11 priority:v15 timestamp:v12 inDisputedArea:0];
    [(RDXPCHandler *)self updatePeer:v10 withEstimate:v16];
  }
}

- (void)updatePeer:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100001930())
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v8 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      _os_log_impl(&dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updates are currently disabled, ignoring}", buf, 0x12u);
    }
  }

  else if (v6)
  {
    if (sub_1000016F8())
    {
      v9 = [v7 firstObject];
      v10 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.priority"];
      v11 = [v10 integerValue];

      if (kRDPriorityGEOIP + 1 < v11)
      {
        v12 = kRDPriorityGEOIP + 1;
      }

      else
      {
        v12 = v11;
      }

      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v14 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
      {
        log = v14;
        v27 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.priority"];
        v29 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.priority"];
        v15 = [v29 integerValue];
        [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.isDisputed"];
        v16 = v30 = v13;
        v17 = [v16 BOOLValue];
        v18 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCode"];
        v19 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.timestamp"];
        *buf = 68290562;
        v32 = 0;
        v33 = 2082;
        v34 = "";
        v35 = 2114;
        v36 = v9;
        v37 = 2114;
        v38 = v27;
        v39 = 2050;
        v40 = v15;
        v41 = 1026;
        v42 = v17;
        v43 = 2114;
        v44 = v18;
        v45 = 2114;
        v46 = v19;
        _os_log_impl(&dword_100000000, log, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:peer update received, dict:%{public, location:escape_only}@, prio:%{public, location:escape_only}@, prioVal:%{public}ld, disputed?:%{public}hhd, countryCode:%{public, location:escape_only}@, timestamp:%{public, location:escape_only}@}", buf, 0x4Au);

        v13 = v30;
      }

      v20 = [RDEstimate alloc];
      v21 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.countryCode"];
      v22 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.timestamp"];
      v23 = [v9 objectForKeyedSubscript:@"com.apple.RegulatoryDomain.peer_status.isDisputed"];
      v24 = [v20 initWithCountryCode:v21 priority:v13 timestamp:v22 inDisputedArea:{objc_msgSend(v23, "BOOLValue")}];

      [(RDXPCHandler *)self updatePeer:v6 withEstimate:v24];
    }
  }

  else
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v25 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      _os_log_impl(&dword_100000000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:got nil peer UUID!}", buf, 0x12u);
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }
    }

    v26 = qword_100019010;
    if (os_signpost_enabled(qword_100019010))
    {
      *buf = 68289026;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      _os_signpost_emit_with_name_impl(&dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "got nil peer UUID!", "{msg%{public}.0s:got nil peer UUID!}", buf, 0x12u);
    }
  }
}

- (void)updatePeer:(id)a3 withEstimate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100001930())
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v8 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updates are currently disabled, ignoring}", buf, 0x12u);
    }
  }

  else if (v6)
  {
    if (sub_1000016F8())
    {
      if (qword_100019278 != -1)
      {
        dispatch_once(&qword_100019278, &stru_100014AB8);
      }

      v9 = qword_100019270;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BD7C;
      block[3] = &unk_100014A18;
      v13 = v7;
      v14 = self;
      v15 = v6;
      dispatch_async(v9, block);
    }
  }

  else
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v10 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:got nil peer UUID!}", buf, 0x12u);
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }
    }

    v11 = qword_100019010;
    if (os_signpost_enabled(qword_100019010))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(&dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "got nil peer UUID!", "{msg%{public}.0s:got nil peer UUID!}", buf, 0x12u);
    }
  }
}

- (void)shareStatusWithPeers
{
  v3 = [(RDXPCHandler *)self dataCache];
  v7 = [v3 getLocalOnlyEstimates];

  v4 = [v7 firstObject];
  v5 = [v4 dictionary];

  if (v5 && [v5 count])
  {
    v6 = [(RDXPCHandler *)self sharer];
    [v6 shareStatusesWithEstimates:v7 completionHandler:&stru_100014A58];
  }

  else
  {
    [(RDXPCHandler *)self clearStatusSharedWithPeers];
  }
}

- (void)clearStatusSharedWithPeers
{
  v2 = [(RDXPCHandler *)self sharer];
  [v2 shareStatusWithEstimate:0 completionHandler:&stru_100014A78];
}

- (void)ping
{
  if (qword_100018FF8 != -1)
  {
    dispatch_once(&qword_100018FF8, &stru_100014AD8);
  }

  v2 = qword_100019000;
  if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pinged!}", v3, 0x12u);
  }
}

- (void)createCacheDirAtPath:(id)a3
{
  v3 = a3;
  if (qword_100019008 != -1)
  {
    dispatch_once(&qword_100019008, &stru_100014A98);
  }

  v4 = qword_100019010;
  if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Nothing should have used createCacheDirAtPath!}", &v6, 0x12u);
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }
  }

  v5 = qword_100019010;
  if (os_signpost_enabled(qword_100019010))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_signpost_emit_with_name_impl(&dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Nothing should have used createCacheDirAtPath!", "{msg%{public}.0s:Nothing should have used createCacheDirAtPath!}", &v6, 0x12u);
  }
}

- (void)triggerUpdateToEligibilityEngine
{
  if (qword_100018FF8 != -1)
  {
    dispatch_once(&qword_100018FF8, &stru_100014AD8);
  }

  v3 = qword_100019000;
  if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:triggering update to eligibility engine}", v5, 0x12u);
  }

  v4 = [(RDXPCHandler *)self dataCache];
  [v4 postResultsToEligibilityEngine];
}

@end