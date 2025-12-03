@interface _GDBAResolver
+ (id)sharedInstance;
- (_GDBAResolver)init;
- (id)balancingAuthorityForLatitude:(double)latitude longitude:(double)longitude polygons:(id)polygons;
@end

@implementation _GDBAResolver

- (_GDBAResolver)init
{
  v9.receiver = self;
  v9.super_class = _GDBAResolver;
  v2 = [(_GDBAResolver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.griddatad.locmonitor.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.gds", "geoDataReader");
    log = v2->_log;
    v2->_log = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10000CAF8 != -1)
  {
    sub_100003AB0();
  }

  v3 = qword_10000CAF0;

  return v3;
}

- (id)balancingAuthorityForLatitude:(double)latitude longitude:(double)longitude polygons:(id)polygons
{
  polygonsCopy = polygons;
  v85 = os_transaction_create();
  selfCopy = self;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283777;
    latitudeCopy2 = latitude;
    v121 = 2049;
    longitudeCopy2 = longitude;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Looking for (%{private}lf, %{private}lf)", buf, 0x16u);
  }

  v9 = [polygonsCopy objectForKeyedSubscript:@"geoJsonDocuments"];
  v101 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v9;
  v106 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
  if (v106)
  {
    v104 = *v116;
    v10 = @"geoJsonDocument";
    do
    {
      for (i = 0; i != v106; i = i + 1)
      {
        if (*v116 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v115 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"boundingBox"];
        v14 = [v13 objectAtIndexedSubscript:1];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v13 objectAtIndexedSubscript:3];
        [v17 doubleValue];
        v19 = v18;

        v20 = [v13 objectAtIndexedSubscript:0];
        [v20 doubleValue];
        v22 = v21;

        v23 = [v13 objectAtIndexedSubscript:2];
        [v23 doubleValue];
        v25 = v24;

        v26 = v16 >= latitude || v19 <= latitude;
        if (!v26 || (v16 > latitude ? (v27 = v19 < latitude) : (v27 = 0), v27))
        {
          v28 = v22 >= longitude || v25 <= longitude;
          if (!v28 || (v22 > longitude ? (v29 = v25 < longitude) : (v29 = 0), v29))
          {
            [v12 objectForKeyedSubscript:v10];
            *&v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v31 = selfCopy->_log;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              latitudeCopy2 = *&v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " Within bounding box. GeoJSON: %@", buf, 0xCu);
            }

            v130[0] = v30;
            v129[0] = v10;
            v129[1] = @"boundingBox";
            v108 = v30;
            v32 = [NSNumber numberWithDouble:v16];
            v128[0] = v32;
            v33 = [NSNumber numberWithDouble:v19];
            v128[1] = v33;
            v34 = [NSNumber numberWithDouble:v22];
            v128[2] = v34;
            [NSNumber numberWithDouble:v25];
            v36 = v35 = v10;
            v128[3] = v36;
            v37 = [NSArray arrayWithObjects:v128 count:4];
            v130[1] = v37;
            v38 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
            [v101 addObject:v38];

            v10 = v35;
          }
        }
      }

      v106 = [obj countByEnumeratingWithState:&v115 objects:v131 count:16];
    }

    while (v106);
  }

  objc_autoreleasePoolPop(context);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v39 = v101;
  v95 = [v39 countByEnumeratingWithState:&v111 objects:v127 count:16];
  if (!v95)
  {
LABEL_68:
    v81 = 0;
    goto LABEL_69;
  }

  v96 = *v112;
  *&v40 = 134284291;
  v84 = v40;
  v93 = v39;
  while (2)
  {
    for (j = 0; j != v95; j = j + 1)
    {
      if (*v112 != v96)
      {
        objc_enumerationMutation(v39);
      }

      v42 = *(*(&v111 + 1) + 8 * j);
      v43 = [v42 objectForKeyedSubscript:{@"geoJsonDocument", v84, v85}];
      v44 = [v43 dataUsingEncoding:4];
      v45 = objc_autoreleasePoolPush();
      v46 = objc_alloc_init(MKGeoJSONDecoder);
      v110 = 0;
      v105 = v44;
      [v46 geoJSONObjectsWithData:v44 error:&v110];
      v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v48 = v110;
      if (v47 == 0.0)
      {
        v82 = selfCopy->_log;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          sub_100003B3C(v82);
        }

        AnalyticsSendEventLazy();
        goto LABEL_67;
      }

      v49 = selfCopy->_log;
      if (v48)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100003AC4(v48, v49);
        }

LABEL_67:

        objc_autoreleasePoolPop(v45);
        goto LABEL_68;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        latitudeCopy2 = v47;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Read GeoJSON %@", buf, 0xCu);
      }

      v102 = v43;

      objc_autoreleasePoolPop(v45);
      v50 = objc_autoreleasePoolPush();
      v51 = [*&v47 objectAtIndexedSubscript:0];
      properties = [v51 properties];
      v52 = [NSJSONSerialization JSONObjectWithData:"JSONObjectWithData:options:error:" options:? error:?];
      [v52 objectForKeyedSubscript:@"name"];
      *&v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v52 objectForKeyedSubscript:@"abbrev"];
      v109 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v54 = selfCopy->_log;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        latitudeCopy2 = *&v53;
        v121 = 2112;
        longitudeCopy2 = v109;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Name %@ %@", buf, 0x16u);
      }

      v107 = v53;
      geometry = [v51 geometry];
      if ([geometry count])
      {
        contexta = v51;
        v56 = [geometry objectAtIndexedSubscript:0];
        polygons = [v56 polygons];

        v133.latitude = latitude;
        v133.longitude = longitude;
        v58 = MKMapPointForCoordinate(v133);
        if ([polygons count])
        {
          v94 = v50;
          v59 = 0;
          while (1)
          {
            v60 = objc_autoreleasePoolPush();
            v61 = [MKPolygonRenderer alloc];
            v62 = [polygons objectAtIndexedSubscript:v59];
            v63 = [v61 initWithPolygon:v62];

            [v63 pointForMapPoint:{v58.x, v58.y}];
            v65 = v64;
            v67 = v66;
            path = [v63 path];
            v134.x = v65;
            v134.y = v67;
            if (CGPathContainsPoint(path, 0, v134, 1))
            {
              break;
            }

            objc_autoreleasePoolPop(v60);
            if ([polygons count] <= ++v59)
            {
              v69 = 0;
              goto LABEL_55;
            }
          }

          v70 = selfCopy->_log;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v84;
            latitudeCopy2 = latitude;
            v121 = 2049;
            longitudeCopy2 = longitude;
            v123 = 2112;
            v124 = v109;
            v125 = 2112;
            v126 = v107;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Coordinate (%{private}f,%{private}f) inside %@ %@", buf, 0x2Au);
          }

          v88 = [v42 objectForKeyedSubscript:@"boundingBox"];
          v90 = [_GDSBalancingAuthorityOutput alloc];
          v92 = [v88 objectAtIndexedSubscript:0];
          [v92 doubleValue];
          v72 = v71;
          v69 = 1;
          v91 = [v88 objectAtIndexedSubscript:1];
          [v91 doubleValue];
          v74 = v73;
          v87 = [v88 objectAtIndexedSubscript:2];
          [v87 doubleValue];
          v76 = v75;
          v77 = [v88 objectAtIndexedSubscript:3];
          [v77 doubleValue];
          v79 = v78;
          v80 = +[NSDate date];
          v89 = [v90 initWithIdentifier:v107 name:*&v109 latitudeStart:v80 latitudeEnd:v72 longitudeStart:v74 longitudeEnd:v76 updateDate:v79];

          objc_autoreleasePoolPop(v60);
LABEL_55:
          v39 = v93;
          v50 = v94;
        }

        else
        {
          v69 = 0;
        }

        v51 = contexta;
      }

      else
      {
        v69 = 5;
      }

      objc_autoreleasePoolPop(v50);
      if (v69 != 5 && v69)
      {
        v81 = v89;
        goto LABEL_69;
      }
    }

    v81 = 0;
    v95 = [v39 countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_69:

  return v81;
}

@end