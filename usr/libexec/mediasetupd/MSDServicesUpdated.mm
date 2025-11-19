@interface MSDServicesUpdated
+ (id)servicesUpdated:(id)a3 cachedData:(id)a4;
- (MSDServicesUpdated)initWithUpdatedData:(id)a3 cachedData:(id)a4;
- (void)_handleDefaultServiceChanged:(id)a3;
- (void)_handleServiceAdded:(id)a3 cachedDataIDS:(id)a4;
- (void)_handleServiceRemoved:(id)a3 cachedDataIDS:(id)a4;
- (void)processChangesInServices;
@end

@implementation MSDServicesUpdated

- (MSDServicesUpdated)initWithUpdatedData:(id)a3 cachedData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSDServicesUpdated;
  v9 = [(MSDServicesUpdated *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedData, a4);
    objc_storeStrong(&v10->_updatedData, a3);
  }

  return v10;
}

+ (id)servicesUpdated:(id)a3 cachedData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithUpdatedData:v7 cachedData:v6];

  return v8;
}

- (void)processChangesInServices
{
  v3 = [(NSArray *)self->_cachedData na_map:&stru_100050A50];
  v4 = [v3 mutableCopy];

  v5 = [(NSArray *)self->_updatedData na_map:&stru_100050A70];
  v6 = [v5 mutableCopy];

  v7 = [v6 count];
  if (v7 != [v4 count])
  {
    v8 = [v6 count];
    v9 = [v4 count];
    v10 = sub_100030FE4();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v8 <= v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "A service was deleted on device", buf, 2u);
      }

      v12 = [v6 copy];
      v13 = [v4 copy];
      [(MSDServicesUpdated *)self _handleServiceRemoved:v12 cachedDataIDS:v13];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "A service was added on device", buf, 2u);
      }

      v12 = [v6 copy];
      v13 = [v4 copy];
      [(MSDServicesUpdated *)self _handleServiceAdded:v12 cachedDataIDS:v13];
    }
  }

  v27 = v6;
  v28 = v4;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_updatedData;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    v18 = MSDefaultServiceRecordType;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v20 recordType];
        v22 = [v21 isEqualToString:v18];

        if (v22)
        {
          [(MSDServicesUpdated *)self _handleDefaultServiceChanged:v20];
        }

        else
        {
          cachedData = self->_cachedData;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1000051CC;
          v30[3] = &unk_100050A98;
          v30[4] = v20;
          v24 = [(NSArray *)cachedData na_firstObjectPassingTest:v30];
          if (v24)
          {
            v25 = sub_100030FE4();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "A service was updated on device", buf, 2u);
            }

            v26 = dispatch_time(0, 500000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000052E0;
            block[3] = &unk_100050AC0;
            block[4] = v20;
            dispatch_after(v26, &_dispatch_main_q, block);
          }
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v16);
  }
}

- (void)_handleServiceAdded:(id)a3 cachedDataIDS:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [v7 removeObjectsInArray:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000054C0;
  v8[3] = &unk_100050AE8;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_handleServiceRemoved:(id)a3 cachedDataIDS:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
  [v7 removeObjectsInArray:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000586C;
  v8[3] = &unk_100050AE8;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_handleDefaultServiceChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [v5 serviceID];

  v7 = [v4 homeUserID];

  cachedData = self->_cachedData;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100005DCC;
  v24[3] = &unk_100050A98;
  v9 = v7;
  v25 = v9;
  v10 = [(NSArray *)cachedData na_firstObjectPassingTest:v24];
  v11 = [v10 service];
  v12 = [v11 serviceID];
  v13 = [v12 isEqual:v6];

  if ((v13 & 1) == 0)
  {
    updatedData = self->_updatedData;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100005E50;
    v21[3] = &unk_100050B10;
    v22 = v9;
    v23 = v6;
    v15 = [(NSArray *)updatedData na_firstObjectPassingTest:v21];
    if (v15)
    {
      v16 = sub_100030FE4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DefaultService was updated on device", buf, 2u);
      }

      v17 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005F14;
      block[3] = &unk_100050AC0;
      v19 = v15;
      dispatch_after(v17, &_dispatch_main_q, block);
    }
  }
}

@end