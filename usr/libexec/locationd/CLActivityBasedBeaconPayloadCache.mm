@interface CLActivityBasedBeaconPayloadCache
- (void)pruneActivityBasedBeaconPayloadCache;
@end

@implementation CLActivityBasedBeaconPayloadCache

- (void)pruneActivityBasedBeaconPayloadCache
{
  if (qword_1025D47D0 != -1)
  {
    sub_101B39420();
  }

  v3 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableArray *)self->_beaconPayloadCache count];
    v17 = 68289538;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = v4;
    v23 = 2050;
    v24 = 11;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:pruneActivityBasedBeaconPayloadCache, activityBasedBeaconPayloadCache count:%{public}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v17, 0x26u);
  }

  if ([(NSMutableArray *)self->_beaconPayloadCache count])
  {
    [(NSMutableArray *)self->_beaconPayloadCache sortUsingComparator:&stru_1024CFFE8];
    v5 = +[NSCountedSet set];
    v6 = +[NSDate now];
    v7 = [(NSMutableArray *)self->_beaconPayloadCache count];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      while (1)
      {
        v9 = [(NSMutableArray *)self->_beaconPayloadCache objectAtIndexedSubscript:--v8];
        -[NSDate timeIntervalSinceDate:](v6, "timeIntervalSinceDate:", [objc_msgSend(v9 "advertisement")]);
        if (v10 > (*(self->_settings._vptr$Settings + 28))(&self->_settings))
        {
          break;
        }

        [v5 addObject:{objc_msgSend(objc_msgSend(v9, "advertisement"), "address")}];
        v12 = [v5 countForObject:{objc_msgSend(objc_msgSend(v9, "advertisement"), "address")}];
        if (v12 > (*(self->_settings._vptr$Settings + 30))(&self->_settings))
        {
          v11 = 3;
          goto LABEL_12;
        }

LABEL_13:
        if (v8 <= 0)
        {
          goto LABEL_14;
        }
      }

      v11 = 1;
LABEL_12:
      [objc_msgSend(v9 "location")];
      [(CLActivityBasedBeaconPayloadCache *)self collectSecondGeotagMetricWithResult:v11 firstHorizontalAccuracy:?];
      [(NSMutableArray *)self->_beaconPayloadCache removeObjectAtIndex:v8];
      goto LABEL_13;
    }

LABEL_14:
    v13 = [(NSMutableArray *)self->_beaconPayloadCache count];
    for (i = self->_settings._vptr$Settings; v13 > (i[6])(&self->_settings); i = self->_settings._vptr$Settings)
    {
      [objc_msgSend(-[NSMutableArray firstObject](self->_beaconPayloadCache "firstObject")];
      [(CLActivityBasedBeaconPayloadCache *)self collectSecondGeotagMetricWithResult:2 firstHorizontalAccuracy:?];
      [(NSMutableArray *)self->_beaconPayloadCache removeObjectAtIndex:0];
      v13 = [(NSMutableArray *)self->_beaconPayloadCache count];
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101B39434();
    }

    v15 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v16 = [(NSMutableArray *)self->_beaconPayloadCache count];
      v17 = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2049;
      v22 = v16;
      v23 = 2050;
      v24 = 11;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:pruneActivityBasedBeaconPayloadCache, prunedBeaconPayloads count:%{private}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v17, 0x26u);
    }
  }
}

@end