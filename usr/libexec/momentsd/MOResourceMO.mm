@interface MOResourceMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
- (id)clonedObjectWithContext:(id)a3;
- (id)description;
- (id)getDedupeKeyError:(id *)a3;
@end

@implementation MOResourceMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 photoAssetCloudIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length]!= 0;
  }

  else
  {
    v9 = 0;
  }

  if ([v5 type] == 2 && !v9)
  {
    v10 = [v5 data];
    v34 = 0;
    v11 = [MOResource getDictionaryForData:v10 error:&v34];
    v12 = v34;
    v13 = [v11 mutableCopy];

    if (v13)
    {
      v14 = [v13 objectForKey:@"MOPhotoResourceLocalIdentifier"];
      v15 = v14;
      if (v14 && [v14 length])
      {
        v33 = v12;
        v16 = get_system_photo_library();
        v39 = v15;
        v17 = [NSArray arrayWithObjects:&v39 count:1];
        v18 = [v16 cloudIdentifierMappingsForLocalIdentifiers:v17];

        v19 = [v18 allValues];
        v20 = [v19 firstObject];
        v21 = [v20 cloudIdentifier];
        v22 = [v21 stringValue];

        if (v22 && [v22 length])
        {
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          v12 = v33;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v22;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MOResourceMO: Found photo asset cloud identifier (%@) for local asset identifier (%@)", buf, 0x16u);
          }

          v24 = v8;
          v8 = v22;
        }

        else
        {
          v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          v12 = v33;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [MOResourceMO managedObjectWithObject:v15 inManagedObjectContext:v24];
          }
        }

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOResourceMO managedObjectWithObject:v18 inManagedObjectContext:?];
    }

    goto LABEL_20;
  }

LABEL_21:
  v25 = [[MOResourceMO alloc] initWithContext:v6];

  v26 = [v5 identifier];
  [(MOResourceMO *)v25 setIdentifier:v26];

  [v5 value];
  [(MOResourceMO *)v25 setValue:?];
  v27 = [v5 name];
  [(MOResourceMO *)v25 setName:v27];

  v28 = [v5 assets];
  [(MOResourceMO *)v25 setAssets:v28];

  v29 = [v5 data];
  [(MOResourceMO *)v25 setData:v29];

  -[MOResourceMO setType:](v25, "setType:", [v5 type]);
  [v5 priorityScore];
  [(MOResourceMO *)v25 setPriorityScore:?];
  v30 = [v5 photoCurationScore];
  [(MOResourceMO *)v25 setPhotoCurationScore:v30];

  -[MOResourceMO setPhotoFaceCount:](v25, "setPhotoFaceCount:", [v5 photoFaceCount]);
  -[MOResourceMO setPhotoAssetMediaType:](v25, "setPhotoAssetMediaType:", [v5 photoAssetMediaType]);
  [(MOResourceMO *)v25 setPhotoAssetCloudIdentifier:v8];
  -[MOResourceMO setSourceEventAccessType:](v25, "setSourceEventAccessType:", [v5 sourceEventAccessType]);
  v31 = [v5 sourceEventIdentifier];
  [(MOResourceMO *)v25 setSourceEventIdentifier:v31];

  return v25;
}

- (id)clonedObjectWithContext:(id)a3
{
  v4 = a3;
  v5 = [[MOResource alloc] initWithResourceMO:self];
  v6 = [MOResourceMO managedObjectWithObject:v5 inManagedObjectContext:v4];

  return v6;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  v3 = [(MOResourceMO *)self identifier];
  v4 = [(MOResourceMO *)self name];
  v5 = [MOResource getStringTypeForResources:[(MOResourceMO *)self type]];
  v6 = [(MOResourceMO *)self assets];
  v7 = [(MOResourceMO *)self photoAssetCloudIdentifier];
  v8 = [(MOResourceMO *)self getDedupeKeyError:0];
  v9 = [(MOResourceMO *)self data];
  v10 = [v9 length];
  [(MOResourceMO *)self value];
  v12 = v11;
  v13 = [(MOResourceMO *)self sourceEventIdentifier];
  v14 = [NSString stringWithFormat:@"<MOResourceMO identifier, %@, name, %@, type, %@, assets, %@, photoAssetCloudIdentifier, %@, dedupe key, %@, data.length, %lu, value, %f, sourceEventIdentifier, %@", v3, v4, v5, v6, v7, v8, v10, v12, v13];

  objc_autoreleasePoolPop(context);

  return v14;
}

- (id)getDedupeKeyError:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(MOResourceMO *)self data];
  v11 = 0;
  v7 = [MOResource getDedupeKeyForResourceData:v6 type:[(MOResourceMO *)self type] error:&v11];
  v8 = v11;

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  return v7;
}

+ (void)managedObjectWithObject:(uint64_t)a1 inManagedObjectContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOResourceMO: No photo cloud asset identifier could be found for photo local asset identifier (%@)", &v2, 0xCu);
}

@end