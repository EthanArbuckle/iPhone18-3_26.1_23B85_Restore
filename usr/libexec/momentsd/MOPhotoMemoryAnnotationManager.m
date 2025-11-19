@interface MOPhotoMemoryAnnotationManager
- (MOPhotoMemoryAnnotationManager)initWithUniverse:(id)a3;
- (id)annotateBaseEvents:(id)a3;
- (id)getBaseEvents:(id)a3;
- (void)_performAnnotationWithEvents:(id)a3 handler:(id)a4;
- (void)performAnnotationWithEvents:(id)a3 handler:(id)a4;
@end

@implementation MOPhotoMemoryAnnotationManager

- (MOPhotoMemoryAnnotationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->fUniverse, a3);
  v14.receiver = self;
  v14.super_class = MOPhotoMemoryAnnotationManager;
  v6 = [(MOPhotoMemoryAnnotationManager *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    queue = v6->_queue;
    v6->_queue = v11;
  }

  return v6;
}

- (void)performAnnotationWithEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoMemoryAnnotationManager performAnnotationWithEvents:handler:];
  }

  v9 = [(MOPhotoMemoryAnnotationManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__MOPhotoMemoryAnnotationManager_performAnnotationWithEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __70__MOPhotoMemoryAnnotationManager_performAnnotationWithEvents_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __70__MOPhotoMemoryAnnotationManager_performAnnotationWithEvents_handler___block_invoke_2;
  v3[3] = &unk_1003369E0;
  v4 = *(a1 + 48);
  [v1 _performAnnotationWithEvents:v2 handler:v3];
}

uint64_t __70__MOPhotoMemoryAnnotationManager_performAnnotationWithEvents_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performAnnotationWithEvents:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoMemoryAnnotationManager _performAnnotationWithEvents:handler:];
  }

  v9 = [(MOPhotoMemoryAnnotationManager *)self getBaseEvents:v7];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoMemoryAnnotationManager _performAnnotationWithEvents:v9 handler:?];
  }

  if ([v9 count])
  {
    v11 = [(MOPhotoMemoryAnnotationManager *)self annotateBaseEvents:v9];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        [MOPhotoMemoryAnnotationManager _performAnnotationWithEvents:v11 handler:?];
      }
    }

    else if (v13)
    {
      [MOPhotoMemoryAnnotationManager _performAnnotationWithEvents:handler:];
    }

    v6[2](v6, v11, 0);
  }

  else
  {
    v6[2](v6, &__NSArray0__struct, 0);
  }
}

- (id)getBaseEvents:(id)a3
{
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoMemoryAnnotationManager getBaseEvents:];
  }

  v5 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 17];
  v6 = [v3 filteredArrayUsingPredicate:v5];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoMemoryAnnotationManager getBaseEvents:v6];
  }

  return v6;
}

- (id)annotateBaseEvents:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v48 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v45 = v3;
    obj = v3;
    v49 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v49)
    {
      v47 = *v59;
LABEL_4:
      v4 = 0;
      while (2)
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v4;
        v5 = *(*(&v58 + 1) + 8 * v4);
        v6 = [MOEventBundle alloc];
        v7 = +[NSUUID UUID];
        v8 = +[NSDate date];
        v9 = [(MOEventBundle *)v6 initWithBundleIdentifier:v7 creationDate:v8];

        [(MOEventBundle *)v9 setInterfaceType:10];
        v10 = objc_opt_new();
        [v10 addObject:v5];
        v51 = v10;
        [(MOEventBundle *)v9 setEvents:v10];
        [(MOEventBundle *)v9 setPropertiesBasedOnEvents];
        v11 = [MOAction alloc];
        v12 = [v5 photoMemoryTitle];
        v13 = [(MOAction *)v11 initWithActionName:v12 actionType:1 actionSubtype:7];
        v52 = v9;
        [(MOEventBundle *)v9 setAction:v13];

        v14 = objc_opt_new();
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v50 = v5;
        v15 = [v5 photoMemoryAssets];
        v16 = [v15 countByEnumeratingWithState:&v54 objects:v70 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v55;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v55 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v54 + 1) + 8 * i);
              v68[0] = @"MOPhotoResourceTypeKey";
              v21 = [v20 resourceType];
              v68[1] = @"MOPhotoResourceLocalIdentifier";
              v69[0] = v21;
              v22 = [v20 localIdentifier];
              v69[1] = v22;
              v23 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];

              v24 = [[MOResource alloc] initWithName:@"Photo" type:2 dict:v23 value:0.0];
              v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v63 = v20;
                _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "PhotoMemory:creating new MOResource with identifier,%@", buf, 0xCu);
              }

              [v14 addObject:v24];
            }

            v17 = [v15 countByEnumeratingWithState:&v54 objects:v70 count:16];
          }

          while (v17);
        }

        v26 = objc_opt_new();
        v27 = [v50 identifierFromProvider];
        [v26 setObject:v27 forKey:@"MOPHMemoryMetaDataKeyMemoryIdentifier"];

        v28 = [v50 photoMemoryTitle];
        [v26 setObject:v28 forKey:@"MOPHMemoryMetaDataKeyMemoryTitle"];

        v29 = [v50 photoEvent];
        [v29 photoMemoryRelevanceScore];
        v30 = [NSNumber numberWithDouble:?];
        [v26 setObject:v30 forKey:@"MOPHMemoryMetaDataKeyMemoryRelevanceScore"];

        v31 = [v50 photoEvent];
        v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v31 photoMemoryIsFavorite]);
        [v26 setObject:v32 forKey:@"MOPHMemoryMetaDataKeyMemoryIsFavorite"];

        v33 = [v50 photoEvent];
        v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v33 photoMemorySubCategory]);
        [v26 setObject:v34 forKey:@"MOPHMemoryMetaDataKeyMemorySubCategory"];

        v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v50 photoMemoryCategory]);
        [v26 setObject:v35 forKey:@"MOPHMemoryMetaDataKeyMemoryCategory"];

        v36 = [[MOResource alloc] initWithName:@"PhotoMemory" type:15 dict:v26 value:0.0];
        [v14 addObject:v36];
        v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v40 = [v50 eventIdentifier];
          v41 = [v50 identifierFromProvider];
          v42 = [v50 photoMemoryTitle];
          v43 = [v42 mask];
          *buf = 138412802;
          v63 = v40;
          v64 = 2112;
          v65 = v41;
          v66 = 2112;
          v67 = v43;
          _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "PhotoMemory: created bundle for memory,eventIdentifier,%@,identifierFromProvider,%@, title,%@", buf, 0x20u);
        }

        [(MOEventBundle *)v52 setResources:v14];
        [(MOEventBundle *)v52 setPhotoSource:3];
        [(MOEventBundle *)v52 setBundleSuperType:6];
        v38 = [v50 photoMemoryCategory];
        v39 = 601;
        switch(v38)
        {
          case 0uLL:
            goto LABEL_36;
          case 1uLL:
            goto LABEL_35;
          case 3uLL:
          case 4uLL:
            v39 = 602;
            goto LABEL_35;
          case 5uLL:
          case 6uLL:
            v39 = 603;
            goto LABEL_35;
          case 7uLL:
            v39 = 604;
            goto LABEL_35;
          case 8uLL:
          case 0x17uLL:
            v39 = 605;
            goto LABEL_35;
          case 9uLL:
            v39 = 606;
            goto LABEL_35;
          case 0xAuLL:
          case 0x1CuLL:
            v39 = 607;
            goto LABEL_35;
          case 0xCuLL:
          case 0xDuLL:
          case 0xEuLL:
            v39 = 608;
            goto LABEL_35;
          case 0x10uLL:
          case 0x11uLL:
            v39 = 609;
            goto LABEL_35;
          case 0x12uLL:
          case 0x13uLL:
            v39 = 610;
            goto LABEL_35;
          case 0x14uLL:
            v39 = 611;
            goto LABEL_35;
          case 0x15uLL:
            v39 = 612;
            goto LABEL_35;
          case 0x18uLL:
            v39 = 613;
            goto LABEL_35;
          case 0x19uLL:
          case 0x1DuLL:
          case 0x1EuLL:
            v39 = 614;
            goto LABEL_35;
          case 0x1AuLL:
            v39 = 615;
            goto LABEL_35;
          case 0x1BuLL:
            v39 = 616;
            goto LABEL_35;
          default:
            v39 = 617;
LABEL_35:
            [(MOEventBundle *)v52 setBundleSubType:v39];
LABEL_36:
            [v48 addObject:v52];

            v4 = v53 + 1;
            if ((v53 + 1) != v49)
            {
              continue;
            }

            v49 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
            if (!v49)
            {
              goto LABEL_38;
            }

            goto LABEL_4;
        }
      }
    }

LABEL_38:

    v3 = v45;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

@end