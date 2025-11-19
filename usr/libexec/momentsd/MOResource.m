@interface MOResource
+ (BOOL)isExtendedLogEnabled;
+ (id)describeType:(unint64_t)a3;
+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)a3;
+ (id)getDedupeKeyForResourceData:(id)a3 type:(unint64_t)a4 error:(id *)a5;
+ (id)getDictionaryForData:(id)a3 error:(id *)a4;
+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MOResource)initWithCoder:(id)a3;
- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndex:(unint64_t)a4;
- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndexes:(id)a4;
- (MOResource)initWithIdentifier:(id)a3;
- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12;
- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12 photoAssetCloudIdentifier:(id)a13;
- (MOResource)initWithName:(id)a3 mapItemHandle:(id)a4 priorityScore:(double)a5;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 assets:(id)a5;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 dict:(id)a5 value:(double)a6;
- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 photoAssetCloudIdentifier:(id)a5;
- (MOResource)initWithName:(id)a3 value:(double)a4;
- (MOResource)initWithPerson:(id)a3;
- (MOResource)initWithPlace:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (MOResource)initWithResourceMO:(id)a3;
- (MOResource)initWithWeather:(id)a3;
- (double)endDate;
- (double)startDate;
- (id)bundleSourceType;
- (id)cityName;
- (id)describeType;
- (id)description;
- (id)enclosingArea;
- (id)getDedupeKeyError:(id *)a3;
- (id)getDictionary;
- (id)location;
- (id)metaData;
- (id)photoLocalDate;
- (id)poiCategory;
- (id)promptIndexes;
- (id)temperature;
- (id)weatherSummary;
- (id)weatherSymbolName;
- (id)windSpeed;
- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)a3;
- (unint64_t)evergreenType;
- (unint64_t)hash;
- (unint64_t)placeType;
- (unint64_t)placeUserType;
- (unint64_t)promptCount;
- (unint64_t)promptIndex;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOResource

- (id)description
{
  v3 = [(MOResource *)self identifier];
  v4 = [(MOResource *)self name];
  v5 = [v4 mask];
  v6 = [(MOResource *)self type];
  v7 = [(MOResource *)self assets];
  v8 = [(MOResource *)self photoAssetCloudIdentifier];
  v9 = [(MOResource *)self data];
  v10 = [v9 length];
  [(MOResource *)self value];
  v12 = [NSString stringWithFormat:@"<MOResource identifier, %@, name, %@, type, %lu, assets, %@, photoAssetCloudIdentifier, %@, data.length, %lu, value, %f", v3, v5, v6, v7, v8, v10, v11];

  return v12;
}

+ (BOOL)isExtendedLogEnabled
{
  +[MODefaultsManager momentsDaemonDefaults];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__MOResource_MOResourceMO__isExtendedLogEnabled__block_invoke;
  v7 = block[3] = &unk_100335F40;
  v2 = isExtendedLogEnabled_onceToken;
  v3 = v7;
  if (v2 != -1)
  {
    dispatch_once(&isExtendedLogEnabled_onceToken, block);
  }

  v4 = isExtendedLogEnabled_result;

  return v4;
}

BOOL __48__MOResource_MOResourceMO__isExtendedLogEnabled__block_invoke(uint64_t a1)
{
  result = [MODefaultsManager isExtendedLogEnabled:@"LoggingOverrideExtendedResourceLogging" forDetaultsManager:*(a1 + 32)];
  isExtendedLogEnabled_result = result;
  return result;
}

- (MOResource)initWithResourceMO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 data];
    v7 = [v5 assets];
    v8 = [v5 photoAssetCloudIdentifier];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 length];
      if ([v5 type] == 2 && v10)
      {
        v11 = get_system_photo_library();
        v12 = [[PHCloudIdentifier alloc] initWithStringValue:v9];
        v48 = v12;
        v13 = [NSArray arrayWithObjects:&v48 count:1];
        v14 = [v11 localIdentifierMappingsForCloudIdentifiers:v13];

        v15 = [v14 allValues];
        v16 = [v15 firstObject];
        v17 = [v16 localIdentifier];

        if (v17 && [v17 length])
        {
          v41 = 0;
          v18 = [MOResource getDictionaryForData:v6 error:&v41];
          v19 = v41;
          v20 = [v18 mutableCopy];

          if (v20)
          {
            v39 = [v20 objectForKey:@"MOPhotoResourceLocalIdentifier"];
            [v20 setObject:v9 forKey:@"MOPhotoResourceICloudIdentifier"];
            [v20 setObject:v17 forKey:@"MOPhotoResourceLocalIdentifier"];
            v40 = v19;
            v21 = [NSJSONSerialization dataWithJSONObject:v20 options:0 error:&v40];
            v38 = v40;

            if (v21)
            {
              v22 = v21;

              if (+[MOResource isExtendedLogEnabled])
              {
                v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412802;
                  v43 = v39;
                  v44 = 2112;
                  v45 = v17;
                  v46 = 2112;
                  v47 = v9;
                  _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "MOResource: Remapped photo local asset identifier (%@) to (%@) via photo cloud asset identifier (%@)", buf, 0x20u);
                }
              }

              v24 = v17;

              v7 = v24;
              v6 = v22;
            }

            v19 = v38;
            v25 = v39;
          }

          else
          {
            v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [(MOResource(MOResourceMO) *)v19 initWithResourceMO:v25];
            }
          }
        }

        else
        {
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(MOResource(MOResourceMO) *)v9 initWithResourceMO:v19];
          }
        }
      }
    }

    else
    {
      [v5 type];
    }

    v27 = [v5 identifier];
    v28 = [v5 name];
    v29 = [v5 type];
    [v5 value];
    v31 = v30;
    [v5 priorityScore];
    v33 = v32;
    v34 = [v5 photoCurationScore];
    self = -[MOResource initWithIdentifier:name:type:assets:data:value:priorityScore:photoCurationScore:photoFaceCount:photoAssetMediaType:photoAssetCloudIdentifier:](self, "initWithIdentifier:name:type:assets:data:value:priorityScore:photoCurationScore:photoFaceCount:photoAssetMediaType:photoAssetCloudIdentifier:", v27, v28, v29, v7, v6, v34, v31, v33, [v5 photoFaceCount], objc_msgSend(v5, "photoAssetMediaType"), v9);

    v35 = [v5 sourceEventIdentifier];

    if (v35)
    {
      v36 = [v5 sourceEventIdentifier];
      [(MOResource *)self setSourceEventIdentifier:v36];
    }

    if ([v5 sourceEventAccessType])
    {
      -[MOResource setSourceEventAccessType:](self, "setSourceEventAccessType:", [v5 sourceEventAccessType]);
    }

    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MOResource)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOResource initWithIdentifier:v6];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOResource.m" lineNumber:29 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOResource initWithIdentifier:]", 29}];
  }

  v8 = [(MOResource *)self initWithIdentifier:v5 name:@"Resource" type:0 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 assets:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:v9 type:a4 assets:v8 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v11;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 photoAssetCloudIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:v9 type:a4 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:v8];

  return v11;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = [(MOResource *)self initWithIdentifier:v7 name:v6 type:a4 assets:0 data:0 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)a3 value:(double)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = [(MOResource *)self initWithIdentifier:v7 name:v6 type:1 assets:0 data:0 value:0 priorityScore:a4 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v8;
}

- (MOResource)initWithName:(id)a3 type:(unint64_t)a4 dict:(id)a5 value:(double)a6
{
  v10 = a3;
  if (a5)
  {
    v17 = 0;
    a5 = [NSJSONSerialization dataWithJSONObject:a5 options:0 error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = a5 == 0;
    }

    if (v12)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MOResource initWithName:v11 type:v13 dict:? value:?];
      }
    }
  }

  v14 = +[NSUUID UUID];
  v15 = [(MOResource *)self initWithIdentifier:v14 name:v10 type:a4 assets:0 data:a5 value:0 priorityScore:a6 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0 photoAssetCloudIdentifier:0];

  return v15;
}

- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12
{
  v19 = a10;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = +[NSUUID UUID];
  v24 = [(MOResource *)self initWithIdentifier:v23 name:v22 type:a5 assets:v21 data:v20 value:v19 priorityScore:a8 photoCurationScore:a9 photoFaceCount:a11 photoAssetMediaType:a12 photoAssetCloudIdentifier:0];

  return v24;
}

- (MOResource)initWithIdentifier:(id)a3 name:(id)a4 type:(unint64_t)a5 assets:(id)a6 data:(id)a7 value:(double)a8 priorityScore:(double)a9 photoCurationScore:(id)a10 photoFaceCount:(unint64_t)a11 photoAssetMediaType:(unint64_t)a12 photoAssetCloudIdentifier:(id)a13
{
  v22 = a3;
  v23 = a4;
  v30 = a6;
  v29 = a7;
  v28 = a10;
  v27 = a13;
  v31.receiver = self;
  v31.super_class = MOResource;
  v24 = [(MOResource *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, a3);
    objc_storeStrong(&v25->_name, a4);
    v25->_type = a5;
    objc_storeStrong(&v25->_assets, a6);
    objc_storeStrong(&v25->_data, a7);
    v25->_value = a8;
    v25->_priorityScore = a9;
    objc_storeStrong(&v25->_photoCurationScore, a10);
    v25->_photoFaceCount = a11;
    v25->_photoAssetMediaType = a12;
    objc_storeStrong(&v25->_photoAssetCloudIdentifier, a13);
    v25->_sourceEventAccessType = [(MOResource *)v25 dataAccessTypeFromResourceType:a5];
  }

  return v25;
}

- (unint64_t)dataAccessTypeFromResourceType:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_100322DF8[a3];
  }
}

+ (id)getDictionaryForData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v13 = 0;
    v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v13];
    v7 = v13;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "resource data dictionary , %@", buf, 0xCu);
    }

    v6 = v6;
    v7 = 0;
    v9 = v6;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_10:
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MOResource getDictionaryForData:v7 error:v10];
  }

  if (a4)
  {
    v11 = v7;
    v9 = 0;
    *a4 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)getDictionary
{
  v3 = objc_opt_class();
  v4 = [(MOResource *)self data];
  v5 = [v3 getDictionaryForData:v4 error:0];

  return v5;
}

+ (id)describeType:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1003388E8 + a3);
  }
}

- (id)describeType
{
  v2 = [(MOResource *)self type];

  return [MOResource describeType:v2];
}

- (MOResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [(MOResource *)self initWithIdentifier:v5];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v6->_name;
      v6->_name = v7;

      v6->_type = [v4 decodeInt64ForKey:@"type"];
      [v4 decodeDoubleForKey:@"value"];
      v6->_value = v9;
      [v4 decodeDoubleForKey:@"priorityScore"];
      v6->_priorityScore = v10;
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoCurationScore"];
      photoCurationScore = v6->_photoCurationScore;
      v6->_photoCurationScore = v11;

      v6->_photoFaceCount = [v4 decodeInt64ForKey:@"photoFaceCount"];
      v6->_photoAssetMediaType = [v4 decodeInt64ForKey:@"photoAssetMediaType"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoCreationDate"];
      photoCreationDate = v6->_photoCreationDate;
      v6->_photoCreationDate = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PhotoAssetCloudIdentifier"];
      photoAssetCloudIdentifier = v6->_photoAssetCloudIdentifier;
      v6->_photoAssetCloudIdentifier = v15;

      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Assets"];
      assets = v6->_assets;
      v6->_assets = v17;

      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      data = v6->_data;
      v6->_data = v19;

      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
      sourceEventIdentifier = v6->_sourceEventIdentifier;
      v6->_sourceEventIdentifier = v21;

      v6->_sourceEventAccessType = [v4 decodeInt64ForKey:@"sourceEventAccessType"];
    }

    self = v6;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInt64:self->_type forKey:@"type"];
  [v5 encodeDouble:@"value" forKey:self->_value];
  [v5 encodeDouble:@"priorityScore" forKey:self->_priorityScore];
  [v5 encodeObject:self->_photoCurationScore forKey:@"photoCurationScore"];
  [v5 encodeInt64:self->_photoFaceCount forKey:@"photoFaceCount"];
  [v5 encodeInt64:self->_photoAssetMediaType forKey:@"photoAssetMediaType"];
  [v5 encodeObject:self->_photoCreationDate forKey:@"photoCreationDate"];
  [v5 encodeObject:self->_photoAssetCloudIdentifier forKey:@"PhotoAssetCloudIdentifier"];
  [v5 encodeObject:self->_assets forKey:@"Assets"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v5 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  v2 = [(MOResource *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOResource *)self identifier];
        if (v8 || ([(MOResource *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOResource *)self identifier];
          v10 = [(MOResource *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

+ (id)getDedupeKeyForResourceData:(id)a3 type:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (!v7)
  {
    a4 = 0;
    goto LABEL_20;
  }

  if (a4 == 6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v33 = [v7 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using for the dedupe key the map item handler , %lu", buf, 0xCu);
    }

    a4 = v7;
    v9 = 0;
    goto LABEL_6;
  }

  v31 = 0;
  v9 = [MOResource getDictionaryForData:v7 error:&v31];
  v10 = v31;
  if (v10 || ![v9 count])
  {
    if (a5)
    {
      v11 = v10;
      a4 = 0;
      *a5 = v10;
      goto LABEL_19;
    }

LABEL_18:
    a4 = 0;
    goto LABEL_19;
  }

  if (a4 > 0x11)
  {
    goto LABEL_31;
  }

  if (((1 << a4) & 0x3DBB8) != 0)
  {
    goto LABEL_14;
  }

  if (a4 != 10)
  {
    if (a4 == 13)
    {
      v14 = [v9 allKeys];
      if ([v14 containsObject:@"MOActivityMetaDataMotionType"])
      {
        v15 = [v9 allKeys];
        if ([v15 containsObject:@"MOActivityMetaDataKeyStartDate"])
        {
          v16 = [v9 allKeys];
          v17 = [v16 containsObject:@"MOActivityMetaDataKeyEndDate"];

          if (v17)
          {
            a4 = +[NSMutableDictionary dictionary];
            v18 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataMotionType"];
            [a4 setObject:v18 forKey:@"MOActivityMetaDataMotionType"];

            v19 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyStartDate"];
            [a4 setObject:v19 forKey:@"MOActivityMetaDataKeyStartDate"];

            v20 = [v9 objectForKeyedSubscript:@"MOActivityMetaDataKeyEndDate"];
            [a4 setObject:v20 forKey:@"MOActivityMetaDataKeyEndDate"];

            v21 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v33 = a4;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Using for the dedupe key the dictionary, %@", buf, 0xCu);
            }

            goto LABEL_6;
          }

          goto LABEL_48;
        }
      }

LABEL_48:
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_17;
    }

LABEL_31:
    if (a4 < 2)
    {
LABEL_14:
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOResource getDedupeKeyForResourceData:a4 type:? error:?];
      }

LABEL_16:

LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    if (a4 != 2)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v22 = [v9 allKeys];
    v23 = @"MOPhotoResourceLocalIdentifier";
    v24 = [v22 containsObject:@"MOPhotoResourceLocalIdentifier"];

    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    v12 = v25;
    if (!v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[MOResource getDedupeKeyForResourceData:type:error:];
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v9 objectForKeyedSubscript:@"MOPhotoResourceLocalIdentifier"];
      *buf = 138412290;
      v33 = v26;
LABEL_40:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using for the dedupe key, %@", buf, 0xCu);

      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v27 = [v9 allKeys];
  v23 = @"MOWorkoutMetaDataKeyWorkoutID";
  v28 = [v27 containsObject:@"MOWorkoutMetaDataKeyWorkoutID"];

  v29 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v12 = v29;
  if (!v28)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[MOResource getDedupeKeyForResourceData:type:error:];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 objectForKeyedSubscript:@"MOWorkoutMetaDataKeyWorkoutID"];
    *buf = 138412290;
    v33 = v26;
    goto LABEL_40;
  }

LABEL_41:

  a4 = [v9 objectForKeyedSubscript:v23];
LABEL_6:
  v10 = 0;
LABEL_19:

LABEL_20:

  return a4;
}

- (id)getDedupeKeyError:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(MOResource *)self data];
  v7 = [v5 getDedupeKeyForResourceData:v6 type:-[MOResource type](self error:{"type"), a3}];

  return v7;
}

- (id)photoLocalDate
{
  v2 = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:v2];

  v4 = [v3 objectForKeyedSubscript:@"MOPhotoResourceLocalTime"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v6];

  return v7;
}

- (id)bundleSourceType
{
  v2 = [(MOResource *)self type]- 2;
  if (v2 <= 0xF && ((0xEF93u >> v2) & 1) != 0)
  {
    v3 = *(&off_10033AF98)[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MOResource)initWithPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];
  v6 = [NSUUID uuidFromString:v5];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(MOResource(MOPerson) *)v6 initWithPerson:v4, v7];
  }

  v8 = [v4 name];
  v9 = [v4 contactIdentifier];
  [v4 priorityScore];
  v11 = [(MOResource *)self initWithIdentifier:v6 name:v8 type:11 assets:v9 data:0 value:0 priorityScore:0.0 photoCurationScore:v10 photoFaceCount:0 photoAssetMediaType:0];

  return v11;
}

- (MOResource)initWithWeather:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 startDate];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [NSNumber numberWithDouble:?];
  [v5 setObject:v7 forKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];

  v8 = [v4 endDate];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];

  v10 = [v4 weatherSummary];
  [v5 setObject:v10 forKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];

  v11 = [v4 weatherSymbolName];
  [v5 setObject:v11 forKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];

  v12 = [v4 temperature];

  if (v12)
  {
    v13 = [v4 temperature];
    [v13 doubleValue];
    v14 = [NSNumber numberWithDouble:?];
    [v5 setObject:v14 forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];

    v15 = [v4 temperature];
    v16 = [v15 unit];
    v17 = [v16 symbol];
    [v5 setObject:v17 forKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
  }

  v18 = [v4 windSpeed];

  if (v18)
  {
    v19 = [v4 windSpeed];
    [v19 doubleValue];
    v20 = [NSNumber numberWithDouble:?];
    [v5 setObject:v20 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];

    v21 = [v4 windSpeed];
    v22 = [v21 unit];
    v23 = [v22 symbol];
    [v5 setObject:v23 forKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
  }

  v24 = [MODictionaryEncoder encodeDictionary:v5];
  v25 = +[NSUUID UUID];
  v26 = [(MOResource *)self initWithIdentifier:v25 name:@"Weather" type:14 assets:0 data:v24 value:0 priorityScore:0.0 photoCurationScore:-1.0 photoFaceCount:0 photoAssetMediaType:0];

  return v26;
}

- (double)endDate
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyEndDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)startDate
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyStartDate"];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)temperature
{
  v3 = [(MOResource *)self metaData];

  if (v3 && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSMeasurement alloc];
    v7 = [(MOResource *)self metaData];
    v8 = [v7 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = [NSUnitTemperature alloc];
    v12 = [(MOResource *)self metaData];
    v13 = [v12 objectForKeyedSubscript:@"MOWeatherMetaDataKeyTemperatureUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)weatherSummary
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWeatherSummary"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)weatherSymbolName
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeySymbolName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)windSpeed
{
  v3 = [(MOResource *)self metaData];

  if (v3 && (-[MOResource metaData](self, "metaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSMeasurement alloc];
    v7 = [(MOResource *)self metaData];
    v8 = [v7 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedValue"];
    [v8 doubleValue];
    v10 = v9;
    v11 = [NSUnit alloc];
    v12 = [(MOResource *)self metaData];
    v13 = [v12 objectForKeyedSubscript:@"MOWeatherMetaDataKeyWindSpeedUnitSymbol"];
    v14 = [v11 initWithSymbol:v13];
    v15 = [v6 initWithDoubleValue:v14 unit:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndex:(unint64_t)a4
{
  v6 = a3;
  v12[0] = @"evergreen_type";
  v7 = [NSNumber numberWithUnsignedInteger:[MOResource evergreenTypeFromEvergreenTypeString:v6]];
  v13[0] = v7;
  v12[1] = @"evergreen_index";
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [(MOResource *)self initWithName:v6 type:9 dict:v9 value:a4];
  return v10;
}

- (MOResource)initWithEvergreenTypeName:(id)a3 promptIndexes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13[0] = @"evergreen_type";
  v8 = [NSNumber numberWithUnsignedInteger:[MOResource evergreenTypeFromEvergreenTypeString:v7]];
  v14[0] = v8;
  v14[1] = v6;
  v13[1] = @"evergreen_indexes";
  v13[2] = @"evergreen_count";
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [(MOResource *)self initWithName:v7 type:9 dict:v10 value:0.0];
  return v11;
}

- (unint64_t)evergreenType
{
  v3 = [(MOResource *)self getDictionary];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self getDictionary];
  v5 = [v4 objectForKeyedSubscript:@"evergreen_type"];
  v6 = [v5 intValue];

  return v6;
}

- (unint64_t)promptIndex
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_index"];
    v6 = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return v6;
}

- (id)promptIndexes
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_indexes"];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (unint64_t)promptCount
{
  v3 = [(MOResource *)self getDictionary];

  if (v3)
  {
    v4 = [(MOResource *)self getDictionary];
    v5 = [v4 objectForKeyedSubscript:@"evergreen_count"];
    v6 = [v5 intValue];
  }

  else
  {
    [(MOResource *)self value];
    return v7;
  }

  return v6;
}

+ (id)evergreenTypeStringFromEvergreenType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_100340810[a3 - 1];
  }

  return v4;
}

+ (unint64_t)evergreenTypeFromEvergreenTypeString:(id)a3
{
  v3 = a3;
  if ([@"WISDOM" isEqualToString:v3])
  {
    v4 = 1;
  }

  else if ([@"PURPOSE" isEqualToString:v3])
  {
    v4 = 4;
  }

  else if ([@"KINDNESS" isEqualToString:v3])
  {
    v4 = 3;
  }

  else if ([@"GRATITUDE" isEqualToString:v3])
  {
    v4 = 2;
  }

  else if ([@"CREATIVITY" isEqualToString:v3])
  {
    v4 = 6;
  }

  else if ([@"RESILIENCE" isEqualToString:v3])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MOResource)initWithPlace:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 placeType]);
  [v11 setObject:v12 forKeyedSubscript:@"placeType"];

  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 placeUserType]);
  [v11 setObject:v13 forKeyedSubscript:@"placeUserType"];

  v14 = [v8 location];
  v15 = [v14 dictionary];
  [v11 setObject:v15 forKeyedSubscript:@"location"];

  v16 = [v8 poiCategory];
  [v11 setObject:v16 forKeyedSubscript:@"poiCategory"];

  if ([v8 placeType] != 101 && objc_msgSend(v8, "placeType") != 102)
  {
    v17 = [v8 enclosingArea];
    [v11 setObject:v17 forKeyedSubscript:@"cityName"];
  }

  v18 = [v8 enclosingArea];
  [v11 setObject:v18 forKeyedSubscript:@"enclosingArea"];

  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    v19 = [NSNumber numberWithDouble:?];
    [v11 setObject:v19 forKeyedSubscript:@"startDate"];
  }

  if (v10)
  {
    [v10 timeIntervalSinceReferenceDate];
    v20 = [NSNumber numberWithDouble:?];
    [v11 setObject:v20 forKeyedSubscript:@"endDate"];
  }

  v21 = [MODictionaryEncoder encodeDictionary:v11];
  v22 = [v8 identifier];
  v23 = [v8 placeName];
  [v8 placeNameConfidence];
  v25 = v24;
  [v8 priorityScore];
  v27 = [(MOResource *)self initWithIdentifier:v22 name:v23 type:12 assets:0 data:v21 value:0 priorityScore:v25 photoCurationScore:v26 photoFaceCount:0 photoAssetMediaType:0];

  return v27;
}

- (MOResource)initWithName:(id)a3 mapItemHandle:(id)a4 priorityScore:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[NSUUID UUID];
  v11 = [(MOResource *)self initWithIdentifier:v10 name:v9 type:6 assets:0 data:v8 value:0 priorityScore:0.0 photoCurationScore:a5 photoFaceCount:0 photoAssetMediaType:0];

  return v11;
}

- (id)metaData
{
  v2 = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:v2];

  return v3;
}

- (id)cityName
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"cityName"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)enclosingArea
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"enclosingArea"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)placeUserType
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"placeUserType"];
  v6 = [v5 intValue];

  return v6;
}

- (unint64_t)placeType
{
  v3 = [(MOResource *)self metaData];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MOResource *)self metaData];
  v5 = [v4 objectForKeyedSubscript:@"placeType"];
  v6 = [v5 intValue];

  return v6;
}

- (id)location
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"location"];

    v6 = [RTLocation locationFromDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)poiCategory
{
  v3 = [(MOResource *)self metaData];

  if (v3)
  {
    v4 = [(MOResource *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"poiCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOResource initWithIdentifier:]";
  v3 = 1024;
  v4 = 29;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v1, 0x12u);
}

- (void)initWithName:(uint64_t)a1 type:(NSObject *)a2 dict:value:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to json, %@", &v2, 0xCu);
}

+ (void)getDictionaryForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to deserialize data to dictionary, %@", &v2, 0xCu);
}

+ (void)getDedupeKeyForResourceData:(uint64_t)a1 type:error:.cold.1(uint64_t a1)
{
  v6 = [MOResource getStringTypeForResources:a1];
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.2()
{
  OUTLINED_FUNCTION_2_3();
  v5 = [MOResource getStringTypeForResources:13];
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x34u);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.3()
{
  OUTLINED_FUNCTION_2_3();
  v0 = [MOResource getStringTypeForResources:10];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)getDedupeKeyForResourceData:type:error:.cold.4()
{
  OUTLINED_FUNCTION_2_3();
  v0 = [MOResource getStringTypeForResources:2];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end