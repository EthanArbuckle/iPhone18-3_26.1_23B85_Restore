@interface CLAvailableVenuesStateMachine
+ (double)distBetweenLatLon:(id)a3 latlon1:(id)a4;
+ (int64_t)getLocationContextFromVenueBounds:(const void *)a3;
- (BOOL)isVenueDisabled:(id)a3 locationId:(id)a4;
- (BOOL)shouldRecompute:(id)a3;
- (CLAvailableVenuesStateMachine)init;
- (id)computeAvailableVenues:(id)a3 nearCoordinates:(id)a4;
- (id)computeAvailableVenues:(id)a3 nearCoordinates:(id)a4 withError:(BOOL *)a5;
- (id)getNearbyLocationGroups:(id)a3 withUpdatedPos:(id)a4;
- (id)getNearbyLocationGroups:(id)a3 withUpdatedPos:(id)a4 nearLocationsOfInterest:(id)a5;
- (id)getNearbyLocationGroupsForTile:(id)a3 withUpdatedPos:(id)a4;
- (id)getNearbyLocationGroupsForTile:(id)a3 withUpdatedPos:(id)a4 nearLocationsOfInterest:(id)a5;
- (id)openTileParserAtPath:(id)a3;
- (id)recomputeIfNecessary:(id)a3 withGlobalAvailabilityTile:(id)a4 andAdditionalLOIs:(id)a5;
- (void)clearLastFix;
@end

@implementation CLAvailableVenuesStateMachine

- (CLAvailableVenuesStateMachine)init
{
  v8.receiver = self;
  v8.super_class = CLAvailableVenuesStateMachine;
  v2 = [(CLAvailableVenuesStateMachine *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lastFix = v2->_lastFix;
    v2->_lastFix = 0;

    disabledVenues = v3->_disabledVenues;
    v3->_maxLoadRadius = 100000.0;
    v3->_disabledVenues = 0;

    availabilityTileParams = v3->_availabilityTileParams;
    v3->_availabilityTileParams = 0;
  }

  return v3;
}

+ (double)distBetweenLatLon:(id)a3 latlon1:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v25 = sub_100024218();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon0 != nullptr";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v26 = sub_100024218();
    if (os_signpost_enabled(v26))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon0 != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: first coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v27 = sub_100024218();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon0 != nullptr";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_17:

    abort_report_np();
    __break(1u);
  }

  if (!v6)
  {
    v28 = sub_100024218();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon1 != nullptr";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = sub_100024218();
    if (os_signpost_enabled(v29))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon1 != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: second coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v27 = sub_100024218();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "latlon1 != nullptr";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_17;
  }

  [v5 latitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v9 = v8;
  [v5 longitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v11 = v10;
  [v7 latitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v13 = v12;
  [v7 longitude];
  [CLAvailableVenuesStateMachine deg2rad:?];
  v15 = sin((v11 - v14) * 0.5);
  v16 = v15 * v15;
  v17 = sin((v9 - v13) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v9);
  v20 = cos(v13);
  v21 = asin(sqrt(v18 + v19 * v20 * v16));
  [CLAvailableVenuesStateMachine metersFromGreatCircleDistance:(v21 + v21)];
  v23 = v22;

  return v23;
}

- (BOOL)isVenueDisabled:(id)a3 locationId:(id)a4
{
  v6 = a3;
  v7 = a4;
  disabledVenues = self->_disabledVenues;
  if (disabledVenues)
  {
    v9 = [(NSSet *)disabledVenues member:v6];
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [(NSSet *)self->_disabledVenues member:v7];
      v10 = v11 != 0;

      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)computeAvailableVenues:(id)a3 nearCoordinates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:v6 nearCoordinates:v7 withError:&v12];
  if (v12 == 1)
  {
    sub_1000244EC();
    v9 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:v6 nearCoordinates:v7 withError:&v12];

    if (v12 == 1)
    {
      sub_1000244EC();
      v8 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:v6 nearCoordinates:v7 withError:&v12];

      if (v12 == 1)
      {
        sub_1000244EC();
        v10 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:v6 nearCoordinates:v7 withError:&v12];

        if (v12 == 1)
        {
          sub_100382924(&v13);

          result = abort_report_np();
          __break(1u);
          return result;
        }

        v8 = v10;
      }
    }

    else
    {
      v8 = v9;
    }
  }

  return v8;
}

- (id)computeAvailableVenues:(id)a3 nearCoordinates:(id)a4 withError:(BOOL *)a5
{
  v128 = a3;
  v117 = a4;
  v118 = a5;
  *a5 = 0;
  v7 = [[NSMutableArray alloc] initWithCapacity:120];
  v8 = 120;
  do
  {
    v9 = objc_alloc_init(ECEFCoordinate);
    [v7 addObject:v9];

    --v8;
  }

  while (v8);
  v130 = [[NSMutableArray alloc] initWithCapacity:120];
  v133 = v7;
  v131 = objc_alloc_init(GeographicCoordinate);
  v137 = objc_alloc_init(ENUCoordinate);
  v120 = objc_alloc_init(ECEFCoordinate);
  v124 = objc_alloc_init(GeographicCoordinate);
  v123 = [v128 numVenuesExpected];
  v125 = [NSMutableArray arrayWithCapacity:v123];
  v10 = [v128 numTotalExpectedExteriorsInVenues];
  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v11 = qword_10045B068;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v156 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "@IndoorAvl, load, Reserving %zu entries for AvailabilityTile entries in result", buf, 0xCu);
  }

  v115 = [NSMutableArray arrayWithCapacity:v10];
  if (qword_10045B060 != -1)
  {
    sub_100382AAC();
  }

  v12 = qword_10045B068;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v156) = v123;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "@IndoorAvl, load, iterating over %d venues in the availability tile", buf, 8u);
  }

  if (v123 >= 1)
  {
    v116 = 0;
    v114 = 0;
    v129 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      sub_1003421A8(buf);
      if ([v128 tileIsOpenForIncrementalIO])
      {
        if (([v128 getNextVenueBoundsIncrementally:buf] & 1) == 0)
        {
          if (qword_10045B060 != -1)
          {
            sub_100382AAC();
          }

          v13 = qword_10045B068;
          if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
          {
            *v154 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, failed to incrementally read venue bounds from tile", v154, 2u);
          }

          v14 = 1;
          *v118 = 1;
          goto LABEL_174;
        }
      }

      else
      {
        sub_100170790([v128 getAvlTile], v129, v154);
        sub_100345A64(buf, v154);
        sub_100344504(v154);
      }

      sub_10002629C(&v158[2], ", ", __p);
      if (!v161)
      {
        if (qword_10045B060 != -1)
        {
          sub_100382AAC();
        }

        v21 = qword_10045B068;
        if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
        {
          v22 = __p;
          if (v151 < 0)
          {
            v22 = __p[0];
          }

          *v154 = 136446210;
          *&v154[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, venue [%{public}s] is missing exterior", v154, 0xCu);
          v14 = 11;
        }

        else
        {
          v14 = 11;
        }

        goto LABEL_172;
      }

      v149[0] = 0;
      v149[1] = 0;
      v148 = v149;
      v147[0] = 0;
      v147[1] = 0;
      v146 = v147;
      if ((v163 & 4) != 0)
      {
        v15 = v162;
        if (!v162)
        {
          v15 = *(qword_100471D00 + 64);
        }

        sub_100343200(v154, v15);
        if (*&v154[24] >= 1)
        {
          v16 = 0;
          do
          {
            v17 = *(*&v154[16] + 4 * v16);
            v18 = v147[0];
LABEL_31:
            if (!v18)
            {
LABEL_35:
              operator new();
            }

            while (1)
            {
              v19 = v18;
              v20 = *(v18 + 7);
              if (v17 < v20)
              {
                v18 = *v19;
                goto LABEL_31;
              }

              if (v20 >= v17)
              {
                break;
              }

              v18 = v19[1];
              if (!v18)
              {
                goto LABEL_35;
              }
            }

            ++v16;
          }

          while (v16 < *&v154[24]);
        }

        sub_1003432BC(v154);
      }

      [v125 removeAllObjects];
      if (v159 < 1)
      {
        goto LABEL_163;
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(*&v158[2] + 8 * v23);
        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        v26 = [NSString stringWithUTF8String:v25];
        if (![v26 hasPrefix:@"G"])
        {
          if (![v26 hasPrefix:@"L"])
          {
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v27 = qword_10045B068;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v26;
              v31 = [v26 UTF8String];
              *v154 = 136315138;
              *&v154[4] = v31;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Warning Encountered invalid venue id %s in availability tile. Skipping", v154, 0xCu);
            }

            goto LABEL_62;
          }

          if ([(CLAvailableVenuesStateMachine *)self isVenueDisabled:0 locationId:v26])
          {
            if (qword_10045B060 != -1)
            {
              sub_100382AAC();
            }

            v27 = qword_10045B068;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = v26;
              v29 = [v26 UTF8String];
              *v154 = 136315138;
              *&v154[4] = v29;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v154, 0xCu);
            }

LABEL_62:

            goto LABEL_63;
          }

          [v125 addObject:v26];
          if (v23 < v159)
          {
            if ((v163 & 4) != 0)
            {
              v32 = v147[0];
              if (v147[0])
              {
                v33 = v147;
                do
                {
                  v34 = *(v32 + 7);
                  v35 = v23 <= v34;
                  v36 = v23 > v34;
                  if (v35)
                  {
                    v33 = v32;
                  }

                  v32 = v32[v36];
                }

                while (v32);
                if (v33 != v147 && v23 >= *(v33 + 7))
                {
LABEL_77:
                  v37 = [v125 count] - 1;
                  for (i = v149[0]; i; i = *v39)
                  {
                    while (1)
                    {
                      v39 = i;
                      v40 = i[4];
                      if (v37 < v40)
                      {
                        break;
                      }

                      if (v40 >= v37)
                      {
                        goto LABEL_63;
                      }

                      i = v39[1];
                      if (!i)
                      {
                        goto LABEL_83;
                      }
                    }
                  }

LABEL_83:
                  operator new();
                }
              }
            }

            else if ([CLLocationContextUtil isRegional:[CLAvailableVenuesStateMachine getLocationContextFromVenueBounds:buf]])
            {
              goto LABEL_77;
            }

            goto LABEL_63;
          }

          sub_100382AD4();
          abort_report_np();
LABEL_227:
          while (2)
          {
            __break(1u);
            sub_100382AAC();
            v104 = qword_10045B068;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
            {
              *v154 = 68289539;
              *&v154[4] = 0;
              *&v154[8] = 2082;
              *&v154[10] = "";
              *&v154[18] = 2082;
              *&v154[20] = "assert";
              *&v154[28] = 2081;
              *&v154[30] = "!std::isnan(vertexENU.x())";
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x26u);
            }

            if (qword_10045B060 == -1)
            {
              v105 = qword_10045B068;
              if (os_signpost_enabled(v105))
              {
                goto LABEL_210;
              }
            }

            else
            {
              dispatch_once(&qword_10045B060, &stru_100432A60);
              v105 = qword_10045B068;
              if (os_signpost_enabled(v105))
              {
LABEL_210:
                *v154 = 68289539;
                *&v154[4] = 0;
                *&v154[8] = 2082;
                *&v154[10] = "";
                *&v154[18] = 2082;
                *&v154[20] = "assert";
                *&v154[28] = 2081;
                *&v154[30] = "!std::isnan(vertexENU.x())";
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v105, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "vertexENU.x() must not be NaN", "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x26u);
              }
            }

            if (qword_10045B060 != -1)
            {
              dispatch_once(&qword_10045B060, &stru_100432A60);
            }

            v106 = qword_10045B068;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
            {
              *v154 = 68289539;
              *&v154[4] = 0;
              *&v154[8] = 2082;
              *&v154[10] = "";
              *&v154[18] = 2082;
              *&v154[20] = "assert";
              *&v154[28] = 2081;
              *&v154[30] = "!std::isnan(vertexENU.x())";
              _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x26u);
            }

LABEL_215:

            abort_report_np();
            continue;
          }
        }

        if (v24)
        {

          if (qword_10045B060 != -1)
          {
            sub_100382AAC();
          }

          v86 = qword_10045B068;
          if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_170;
          }

          v87 = __p;
          if (v151 < 0)
          {
            v87 = __p[0];
          }

          *v154 = 136446210;
          *&v154[4] = v87;
          v88 = v86;
          v89 = OS_LOG_TYPE_ERROR;
          v90 = "Multiple groups associated with venue [%{public}s].  Ignoring from availability tile";
          goto LABEL_183;
        }

        if ([(CLAvailableVenuesStateMachine *)self isVenueDisabled:v26 locationId:0])
        {
          if (qword_10045B060 != -1)
          {
            sub_100382AAC();
          }

          v91 = qword_10045B068;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            v92 = v26;
            v93 = [v26 UTF8String];
            *v154 = 136315138;
            *&v154[4] = v93;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v154, 0xCu);
          }

LABEL_163:
          if (qword_10045B060 != -1)
          {
            sub_100382AAC();
          }

          v94 = qword_10045B068;
          if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
          {
            v95 = __p;
            if (v151 < 0)
            {
              v95 = __p[0];
            }

            *v154 = 136315138;
            *&v154[4] = v95;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#Warning Cannot find location group in venue [%s]", v154, 0xCu);
          }

          v24 = 0;
          goto LABEL_170;
        }

        v24 = v26;
LABEL_63:

        ++v23;
      }

      while (v23 < v159);
      if (!v24)
      {
        goto LABEL_163;
      }

      if ([v125 count] && v125)
      {
        v41 = [v125 count];
        v113 = [v24 substringFromIndex:1];

        v112 = [CLAvailableVenuesStateMachine getLocationContextFromVenueBounds:buf];
        v116 += v41;
        if (v161)
        {
          v121 = 0;
          v122 = v160;
          v119 = &v160[v161];
          do
          {
            if (v121)
            {
              v121 = 1;
            }

            else
            {
              v42 = *(*v122 + 24);
              v127 = *v122;
              if (v42 == *(*v122 + 48))
              {
                if ((v42 & 0x80000000) != 0)
                {
                  v107 = sub_100024218();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                  {
                    v108 = *(v127 + 48);
                    *v154 = 68289795;
                    *&v154[8] = 2082;
                    *&v154[10] = "";
                    *&v154[18] = 1026;
                    *&v154[20] = v108;
                    *&v154[24] = 2082;
                    *&v154[26] = "assert";
                    *&v154[34] = 2081;
                    *&v154[36] = "exterior.longitude_size() >= 0";
                    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x2Cu);
                  }

                  v109 = sub_100024218();
                  if (os_signpost_enabled(v109))
                  {
                    v110 = *(v127 + 48);
                    *v154 = 68289795;
                    *&v154[8] = 2082;
                    *&v154[10] = "";
                    *&v154[18] = 1026;
                    *&v154[20] = v110;
                    *&v154[24] = 2082;
                    *&v154[26] = "assert";
                    *&v154[34] = 2081;
                    *&v154[36] = "exterior.longitude_size() >= 0";
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, load, exterior longitude_size() returned a negative value?!", "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x2Cu);
                  }

                  v106 = sub_100024218();
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                  {
                    v111 = *(v127 + 48);
                    *v154 = 68289795;
                    *&v154[8] = 2082;
                    *&v154[10] = "";
                    *&v154[18] = 1026;
                    *&v154[20] = v111;
                    *&v154[24] = 2082;
                    *&v154[26] = "assert";
                    *&v154[34] = 2081;
                    *&v154[36] = "exterior.longitude_size() >= 0";
                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v154, 0x2Cu);
                  }

                  goto LABEL_215;
                }

                if ([v7 count] < v42)
                {
                  v43 = [v7 count];
                  v44 = v42 - v43;
                  if (v42 != v43)
                  {
                    do
                    {
                      v45 = objc_alloc_init(ECEFCoordinate);
                      [v7 addObject:v45];

                      --v44;
                    }

                    while (v44);
                  }

                  if (qword_10045B060 != -1)
                  {
                    sub_100382AAC();
                  }

                  v46 = qword_10045B068;
                  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
                  {
                    *v154 = 67109120;
                    *&v154[4] = v42;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "@IndoorAvl, load, Needed to allocate additional ECEFCoordinates for the pool: total required %d", v154, 8u);
                  }
                }

                if (v42)
                {
                  v47 = 0;
                  v48 = 8 * v42;
                  do
                  {
                    [(GeographicCoordinate *)v131 setFromLatitude:*(*(v127 + 16) + v47) longitude:*(*(v127 + 40) + v47) andAltitude:0.0];
                    v49 = [v7 lastObject];
                    [v7 removeLastObject];
                    [v49 setFromLatLon:v131];
                    [v130 addObject:v49];

                    v47 += 8;
                  }

                  while (v48 != v47);
                }

                [CLLocationGroup storeAverage:v120 ofVertices:v130];
                [(GeographicCoordinate *)v124 setFromECEFCoordinate:v120];
                if ([v117 count])
                {
                  v144 = 0u;
                  v145 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v50 = v117;
                  v51 = [v50 countByEnumeratingWithState:&v142 objects:v153 count:16];
                  if (v51)
                  {
                    v52 = *v143;
LABEL_107:
                    v53 = 0;
                    while (1)
                    {
                      if (*v143 != v52)
                      {
                        objc_enumerationMutation(v50);
                      }

                      v54 = *(*(&v142 + 1) + 8 * v53);
                      [CLAvailableVenuesStateMachine distBetweenLatLon:v124 latlon1:v54];
                      v56 = v55;
                      v57 = v55 >= self->_maxLoadRadius;

                      if (!v57)
                      {
                        break;
                      }

                      if (v51 == ++v53)
                      {
                        v51 = [v50 countByEnumeratingWithState:&v142 objects:v153 count:16];
                        if (v51)
                        {
                          goto LABEL_107;
                        }

                        break;
                      }
                    }
                  }

                  else
                  {
                    v56 = 1.79769313e308;
                  }
                }

                else
                {
                  v56 = 0.0;
                }

                maxLoadRadius = self->_maxLoadRadius;
                v121 = v56 > maxLoadRadius;
                if (v56 > maxLoadRadius)
                {
                  v116 -= [v125 count];
                }

                else
                {
                  v63 = [[CLLocationGroup alloc] initWithGroupId:v113 locationIds:v125 center:v120 wifiOnlyDownloadLocIdxs:&v148 locationContext:v112 andTolerance:*(v127 + 64)];
                  v136 = v63;
                  v64 = [(CLLocationGroup *)v63 getVertices];
                  v140 = 0u;
                  v141 = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  obj = v130;
                  v65 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
                  v66 = v65;
                  if (v65)
                  {
                    v135 = *v139;
                    do
                    {
                      v67 = 0;
                      do
                      {
                        if (*v139 != v135)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v68 = *(*(&v138 + 1) + 8 * v67);
                        v69 = *v64;
                        v70 = [(CLLocationGroup *)v63 centerLatLon];
                        v71 = [(CLLocationGroup *)v63 centerECEF];
                        [v68 toBoostEnuWithLatLonOrigin:v70 andEcefOrigin:v71 usingENU:v137];
                        v75 = v69[1];
                        v74 = v69[2];
                        if (v75 >= v74)
                        {
                          v77 = *v69;
                          v78 = v75 - *v69;
                          v79 = v78 >> 4;
                          v80 = (v78 >> 4) + 1;
                          if (v80 >> 60)
                          {
                            sub_10000FC84();
                          }

                          v81 = v74 - v77;
                          if (v81 >> 3 > v80)
                          {
                            v80 = v81 >> 3;
                          }

                          if (v81 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v82 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v82 = v80;
                          }

                          if (v82)
                          {
                            if (!(v82 >> 60))
                            {
                              operator new();
                            }

                            sub_10000D444();
                          }

                          v83 = (16 * v79);
                          *v83 = v72;
                          v83[1] = v73;
                          v76 = 16 * v79 + 16;
                          memcpy(0, v77, v78);
                          *v69 = 0;
                          v69[1] = v76;
                          v69[2] = 0;
                          if (v77)
                          {
                            operator delete(v77);
                          }

                          v7 = v133;
                        }

                        else
                        {
                          *v75 = v72;
                          v75[1] = v73;
                          v76 = (v75 + 2);
                        }

                        v69[1] = v76;

                        v84 = (*v64)[1];
                        v85 = *(v84 - 16);
                        v63 = v136;
                        v67 = v67 + 1;
                      }

                      while (v66 != v67);
                      v66 = [obj countByEnumeratingWithState:&v138 objects:v152 count:{16, *(v84 - 8)}];
                    }

                    while (v66);
                  }

                  if (*(v127 + 48) != ((*v64)[1] - **v64) >> 4)
                  {
                    sub_100382CB4(v154);

                    abort_report_np();
                    goto LABEL_227;
                  }

                  sub_100027918(*v64);
                  [v115 addObject:v136];

                  ++v114;
                }

                [v7 addObjectsFromArray:v130];
                [v130 removeAllObjects];
              }

              else
              {
                if (qword_10045B060 != -1)
                {
                  sub_100382AAC();
                }

                v58 = qword_10045B068;
                if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
                {
                  v59 = __p;
                  if (v151 < 0)
                  {
                    v59 = __p[0];
                  }

                  v60 = *(v127 + 24);
                  v61 = *(v127 + 48);
                  *v154 = 136446722;
                  *&v154[4] = v59;
                  *&v154[12] = 1026;
                  *&v154[14] = v60;
                  *&v154[18] = 1026;
                  *&v154[20] = v61;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, exterior polygon of venue [%{public}s] is corrupt.  %{public}d latitudes, %{public}d longitudes", v154, 0x18u);
                }

                v121 = 0;
              }
            }

            ++v122;
          }

          while (v122 != v119);
        }

        v14 = 0;
        v24 = v113;
        goto LABEL_171;
      }

      if (qword_10045B060 != -1)
      {
        sub_100382AAC();
      }

      v96 = qword_10045B068;
      if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
      {
        v97 = __p;
        if (v151 < 0)
        {
          v97 = __p[0];
        }

        *v154 = 136315138;
        *&v154[4] = v97;
        v88 = v96;
        v89 = OS_LOG_TYPE_DEFAULT;
        v90 = "#Warning No venues associated with availability tile [%s]";
LABEL_183:
        _os_log_impl(&_mh_execute_header, v88, v89, v90, v154, 0xCu);
      }

LABEL_170:
      v14 = 11;
LABEL_171:
      sub_1000275F4(&v146, v147[0]);
      sub_1000275F4(&v148, v149[0]);

LABEL_172:
      if (v151 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_174:
      sub_100344504(buf);
      objc_autoreleasePoolPop(context);
      if (v14 != 11 && v14)
      {
        v102 = 0;
        v103 = v115;
        goto LABEL_203;
      }

      if (++v129 == v123)
      {
        goto LABEL_186;
      }
    }
  }

  v114 = 0;
  v116 = 0;
LABEL_186:
  if ([v128 tileIsOpenForIncrementalIO])
  {
    sub_1003421A8(buf);
    if (qword_10045B060 != -1)
    {
      sub_100382AAC();
    }

    v98 = qword_10045B068;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "@IndoorAvl, load, make sure we have no more venue bounds to read", v154, 2u);
    }

    if ([v128 getNextVenueBoundsIncrementally:buf])
    {
      if (qword_10045B060 != -1)
      {
        sub_100382AAC();
      }

      v99 = qword_10045B068;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *v154 = 0;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, had venues left over after iterating over all venues in tile. why?", v154, 2u);
      }
    }

    sub_100344504(buf);
  }

  if (qword_10045B060 != -1)
  {
    sub_100382AAC();
  }

  v100 = qword_10045B068;
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v156 = v116;
    v157 = 2048;
    *v158 = v114;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, "Found %zu floors across %zu venues", buf, 0x16u);
  }

  v103 = v115;
  v102 = v115;
LABEL_203:

  return v102;
}

- (id)getNearbyLocationGroupsForTile:(id)a3 withUpdatedPos:(id)a4
{
  v4 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroupsForTile:a3 withUpdatedPos:a4 nearLocationsOfInterest:0];

  return v4;
}

- (id)openTileParserAtPath:(id)a3
{
  v3 = a3;
  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v4 = qword_10045B068;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 absoluteString];
    v17 = 136315138;
    v18 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to get nearby location groups from availability tile at %s", &v17, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v3 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [[CLAvailabilityTileParser alloc] initWithTilePathIncrementalIO:v3];
    p_super = &v9->super;
    if (v9)
    {
      p_super = v9;
      v11 = p_super;
    }

    else
    {
      if (qword_10045B060 != -1)
      {
        sub_100382AAC();
      }

      v15 = qword_10045B068;
      if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't load availability tile - ignoring request for nearby locations", &v17, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_100382AAC();
    }

    p_super = qword_10045B068;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      v12 = [v3 path];
      v13 = v12;
      v14 = [v12 UTF8String];
      v17 = 136315138;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "#warning, cannot find file %s on-disk", &v17, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)getNearbyLocationGroups:(id)a3 withUpdatedPos:(id)a4
{
  v4 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroups:a3 withUpdatedPos:a4 nearLocationsOfInterest:0];

  return v4;
}

- (id)getNearbyLocationGroups:(id)a3 withUpdatedPos:(id)a4 nearLocationsOfInterest:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CLAvailableVenuesStateMachine *)self openTileParserAtPath:a3];
  if (v10)
  {
    v11 = [(CLAvailableVenuesStateMachine *)self getNearbyLocationGroupsForTile:v10 withUpdatedPos:v8 nearLocationsOfInterest:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)clearLastFix
{
  lastFix = self->_lastFix;
  self->_lastFix = 0;
}

- (BOOL)shouldRecompute:(id)a3
{
  v4 = a3;
  lastFix = self->_lastFix;
  if (lastFix)
  {
    [CLAvailableVenuesStateMachine distBetweenLatLon:lastFix latlon1:v4];
    v7 = v6;
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v8 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134217984;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, CLAvailableVenuesStateMachine, shouldRecompute, moveDist, %lf", &v11, 0xCu);
    }

    v9 = v7 >= self->_maxLoadRadius * 0.5;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)getNearbyLocationGroupsForTile:(id)a3 withUpdatedPos:(id)a4 nearLocationsOfInterest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[CLIndoorAvailabilityTileParams initWithAvailabilityTile:]([CLIndoorAvailabilityTileParams alloc], "initWithAvailabilityTile:", [v8 getAvlTile]);
  availabilityTileParams = self->_availabilityTileParams;
  self->_availabilityTileParams = v11;

  if (self->_lastFix)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(GeographicCoordinate *)self->_lastFix latitude];
      v15 = v14;
      [(GeographicCoordinate *)self->_lastFix longitude];
      v20 = 134545921;
      v21 = v15;
      v22 = 2053;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Previous load occurred at %{sensitive}.7lf, %{sensitive}.7lf", &v20, 0x16u);
    }
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v17 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No previous location stored in state, we should definitely recompute", &v20, 2u);
    }
  }

  v18 = [(CLAvailableVenuesStateMachine *)self recomputeIfNecessary:v9 withGlobalAvailabilityTile:v8 andAdditionalLOIs:v10];

  return v18;
}

- (id)recomputeIfNecessary:(id)a3 withGlobalAvailabilityTile:(id)a4 andAdditionalLOIs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v15 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Have to recompute nearby location groups because newCoordinate was not nil?", &v22, 2u);
    }

    goto LABEL_18;
  }

  if (v11)
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v22) = 0;
    v14 = "Have to recompute because we have locations of interest";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v14, &v22, 2u);
LABEL_17:
    objc_storeStrong(&self->_lastFix, a3);
LABEL_18:
    v16 = [[NSMutableArray alloc] initWithArray:v12];
    v17 = v16;
    if (v9)
    {
      [v16 addObject:v9];
    }

    v18 = [(CLAvailableVenuesStateMachine *)self computeAvailableVenues:v10 nearCoordinates:v17, v22];

    goto LABEL_21;
  }

  if ([(CLAvailableVenuesStateMachine *)self shouldRecompute:v9])
  {
    if (qword_10045B060 != -1)
    {
      sub_100382910();
    }

    v13 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v22) = 0;
    v14 = "Have to recompute nearby location groups because we moved far enough away";
    goto LABEL_16;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382910();
  }

  v20 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    v21 = self->_lastFix == 0;
    LODWORD(v22) = 67109120;
    HIDWORD(v22) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "No need to recompute nearby location groups, (_lastFix==nil) = %d", &v22, 8u);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

+ (int64_t)getLocationContextFromVenueBounds:(const void *)a3
{
  if ((*(a3 + 104) & 8) != 0)
  {
    return *(a3 + 24) != 1;
  }

  v3 = *(a3 + 6);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a3 + 2);
  v5 = 8 * v3;
  while (1)
  {
    if (*(*v4 + 23) < 0)
    {
      v6 = **v4;
    }

    v7 = [NSString stringWithUTF8String:?];
    if (([v7 hasPrefix:@"G"] & 1) == 0)
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  v9 = [v7 hasPrefix:@"LR"];

  return v9;
}

@end