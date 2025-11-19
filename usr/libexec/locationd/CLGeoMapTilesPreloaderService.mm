@interface CLGeoMapTilesPreloaderService
- (BOOL)fetchLOIFromCoreRoutine;
- (CLMapMatcherGeoTilesPrecachingConfig)getConfigFromMobileAssets;
- (id)getCountryCode;
- (void)fetchNPLOI;
@end

@implementation CLGeoMapTilesPreloaderService

- (BOOL)fetchLOIFromCoreRoutine
{
  if (self->fMapMatcherMobileAssetReader.fMapMatcherOperatingCountryConfig.__tree_.__size_)
  {
    p_fRoutineInfo = &self->fRoutineInfo;
    v4 = sub_10022D024(&self->fRoutineInfo.fLOICoarseCoordinateRequestMachContTime);
    if (v4)
    {
      if ([(CLGeoMapTilesPreloaderService *)self setCoarseCoordinatesFromDefaultsWriteEntry])
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101B9B124();
        }

        v5 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLGMTPS,using coordinates from defaults-write entry", v12, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B9C434();
        }
      }

      else
      {
        v7 = sub_1000081AC();
        if (qword_1025D46B0 != -1)
        {
          sub_101B9B124();
        }

        v8 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          size = p_fRoutineInfo->fLOICoarseCoordinates.__tree_.__size_;
          v10 = v7 - p_fRoutineInfo->fLOICoarseCoordinateRequestMachContTime;
          v12[0] = 67437057;
          v12[1] = size;
          v13 = 2050;
          v14 = v10;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLGMTPS,requesting home work school LOIs,%{sensitive}d,dT,%{public}.1lf", v12, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B9C324();
        }

        p_fRoutineInfo->fLOICoarseCoordinateRequestMachContTime = v7;
        [(CLGeoMapTilesPreloaderService *)self fetchLOIForType:0 isSecondTry:0];
      }

      LOBYTE(v4) = 1;
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLGMTPS,LOI query cancelled,mobile assets not received", v12, 2u);
    }

    v4 = sub_10000A100(121, 2);
    if (v4)
    {
      sub_101B9C510();
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)fetchNPLOI
{
  if (self->fMapMatcherMobileAssetReader.fMapMatcherOperatingCountryConfig.__tree_.__size_)
  {
    [(CLGeoMapTilesPreloaderService *)self getConfigFromMobileAssets];
    p_fRoutineInfo = &self->fRoutineInfo;
    if (BYTE4(v37))
    {
      if (sub_1012B1848(&self->fRoutineInfo))
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v33 = v44;
        v34 = v45;
        v35 = v46;
        v29 = v40;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        v26 = v37;
        v27 = v38;
        v25[2] = sub_1012B1A68;
        v25[3] = &unk_1024DCBF0;
        v25[4] = self;
        v36 = v47;
        v28 = v39;
        v4 = sub_1012B23C8(&self->fRoutineInfo);
        if (v4 < 0.0 || v4 > 21600.0)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101B9B0B8();
          }

          v11 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v59 = v4;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLGMTPS,NPLOI,current location not available to make query,%{public}.1lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B9CF70();
          }
        }

        else if (*(&self->fRoutineInfo.fLastUserLocation.coordinate.longitude + 4) <= 250.0)
        {
          v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(&self->fRoutineInfo.fLastUserLocation.courseAccuracy + 4)];
          v13 = objc_alloc_init(NSDateFormatter);
          [v13 setDateFormat:@"yyyy-MM-dd"];
          v14 = COERCE_DOUBLE([v13 stringFromDate:v12]);
          v15 = [v13 stringFromDate:{+[NSDate date](NSDate, "date")}];
          if (qword_1025D46B0 != -1)
          {
            sub_101B9B0B8();
          }

          v16 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v17 = *(&self->fRoutineInfo.fLastUserLocation.suitability + 1);
            v18 = *(&self->fRoutineInfo.fLastUserLocation.coordinate.latitude + 4);
            *buf = 138544387;
            v59 = v14;
            v60 = 2114;
            v61 = v15;
            v62 = 2053;
            v63 = v17;
            v64 = 2053;
            v65 = v18;
            v66 = 2050;
            v67 = v4;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "CLGMTPS,NPLOI,requested,dataDate,%{public}@,todaysDate,%{public}@,LL,%{sensitive}.7lf,%{sensitive}.7lf,locationAge,%{public}.1lf", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D46B0 != -1)
            {
              sub_101B9B0B8();
            }

            v22 = *(&self->fRoutineInfo.fLastUserLocation.suitability + 1);
            v23 = *(&self->fRoutineInfo.fLastUserLocation.coordinate.latitude + 4);
            v48 = 138544387;
            v49 = v14;
            v50 = 2114;
            v51 = v15;
            v52 = 2053;
            v53 = v22;
            v54 = 2053;
            v55 = v23;
            v56 = 2050;
            v57 = v4;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLGeoMapTilesPreloaderService fetchNPLOI]", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          self->fRoutineInfo.fDistanceCalc.fRefLatDegs = CFAbsoluteTimeGetCurrent();
          v19 = [CLLocation alloc];
          v20 = CLLocationCoordinate2DMake(*(&self->fRoutineInfo.fLastUserLocation.suitability + 1), *(&self->fRoutineInfo.fLastUserLocation.coordinate.latitude + 4));
          v21 = [v19 initWithCoordinate:v12 altitude:v20.latitude horizontalAccuracy:v20.longitude verticalAccuracy:*(&self->fRoutineInfo.fLastUserLocation.horizontalAccuracy + 4) timestamp:{*(&self->fRoutineInfo.fLastUserLocation.coordinate.longitude + 4), *(&self->fRoutineInfo.fLastUserLocation.altitude + 4)}];
          [(CLRoutineMonitorServiceProtocol *)self->fRoutineMonitor fetchNextPredictedLocationsOfInterestFromLocation:v21 startDate:+[NSDate timeInterval:"date"]withReply:v25, 86400.0];
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101B9B0B8();
          }

          v5 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v6 = *(&self->fRoutineInfo.fLastUserLocation.coordinate.longitude + 4);
            *buf = 134349056;
            v59 = v6;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLGMTPS,NPLOI,not requested as hunc is over threshold,%{public}.1lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B9CE80();
          }
        }
      }
    }

    else
    {
      *buf = 3;
      if (sub_10022CF50(&self->fRoutineInfo.fLOICoarseCoordinates, buf))
      {
        *buf = 3;
        sub_1012C1218(&self->fRoutineInfo.fLOICoarseCoordinates, buf);
        if (qword_1025D46B0 != -1)
        {
          sub_101B9B0B8();
        }

        v8 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          size = p_fRoutineInfo->fLOICoarseCoordinates.__tree_.__size_;
          *buf = 134349056;
          v59 = *&size;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLGMTPS,NPLOI caching not allowed, erased all NPLOI coordinates,size,%{public}ld", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B9CCB4();
        }
      }

      else
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101B9B0B8();
        }

        v10 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLGMTPS,NPLOI caching not allowed", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B9CDA4();
        }
      }
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v7 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLGMTPS,NPLOI query cancelled, mobile assets not received", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B9D060();
    }
  }
}

- (CLMapMatcherGeoTilesPrecachingConfig)getConfigFromMobileAssets
{
  sub_10022F21C(retstr);
  result = [(CLGeoMapTilesPreloaderService *)self getCountryCode];
  if (!result)
  {
    return result;
  }

  sub_10000EC00(__p, [(CLMapMatcherGeoTilesPrecachingConfig *)result UTF8String]);
  result = sub_10022F2E4(&self->fMapMatcherMobileAssetReader, __p, retstr);
  v6 = result;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (result)
  {
LABEL_4:
    var12 = retstr->var12;
    var13 = retstr->var13;
    if (self->fSettings.fMinimumBatteryLevel > 0)
    {
      var12 = self->fSettings.fMinimumBatteryLevel;
    }

    self->fMinimumBatterylevel = var12;
    self->fMinimumBatteryLevelAggressiveMode = var13;
    var15 = retstr->var15;
    self->fXPCDownloadInterval = retstr->var14;
    self->fDownloadSizePerSection = var15;
    var17 = retstr->var17;
    self->fUploadSizePerSection = retstr->var16;
    self->fDownloadTimePerSection = var17;
    self->fIsDiskIntensiveActivity = retstr->var2;
    *&self->fTotalTimeSpentDownloadingData.__tree_.__end_node_.__left_ = retstr->var25;
    if (self->fMinimumBatterylevel <= 24)
    {
      self->fMinimumBatterylevel = 25;
    }

    return result;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101B9B0B8();
  }

  v11 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLGMTPS,precaching config not available, precaching not supported", __p, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101BA09D8();
  }

  return result;
}

- (id)getCountryCode
{
  result = +[GEOCountryConfiguration sharedConfiguration];
  if (result)
  {

    return [result countryCode];
  }

  return result;
}

@end