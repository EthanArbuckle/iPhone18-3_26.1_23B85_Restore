@interface APDBAdInstanceRow
- (BOOL)updateNotNilColumns;
- (id)initImpressionId:(id)a3 accountToken:(id)a4 table:(id)a5;
- (id)initImpressionId:(id)a3 campaign:(id)a4 adGroup:(id)a5 ad:(id)a6 creative:(id)a7 bundleId:(id)a8 searchTermId:(id)a9 adamId:(id)a10 adType:(id)a11 adFormatType:(id)a12 containerType:(id)a13 relay:(id)a14 adMetadata:(id)a15 propertiesJSON:(id)a16 brand:(id)a17 advertiserCategory:(id)a18 accountToken:(id)a19 table:(id)a20;
- (id)readOnlyColumns;
@end

@implementation APDBAdInstanceRow

- (id)readOnlyColumns
{
  v3 = [NSSet setWithObjects:@"relay", @"allEvents", @"impressionEvents", @"interactedEvents", 0];
  v7.receiver = self;
  v7.super_class = APDBAdInstanceRow;
  v4 = [(APDBAdInstanceRow *)&v7 readOnlyColumns];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)initImpressionId:(id)a3 campaign:(id)a4 adGroup:(id)a5 ad:(id)a6 creative:(id)a7 bundleId:(id)a8 searchTermId:(id)a9 adamId:(id)a10 adType:(id)a11 adFormatType:(id)a12 containerType:(id)a13 relay:(id)a14 adMetadata:(id)a15 propertiesJSON:(id)a16 brand:(id)a17 advertiserCategory:(id)a18 accountToken:(id)a19 table:(id)a20
{
  v25 = a3;
  v26 = a4;
  v46 = a5;
  v45 = a6;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v27 = v26;
  v39 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v33 = a18;
  v34 = a19;
  v47.receiver = self;
  v47.super_class = APDBAdInstanceRow;
  v35 = [(APDBAdInstanceRow *)&v47 initAsNewObjectWithTable:a20];
  v36 = v35;
  if (v35)
  {
    [v35 setValue:v25 forColumnName:@"impressionId"];
    [v36 setValue:v27 forColumnName:@"campaign"];
    [v36 setValue:v46 forColumnName:@"adGroup"];
    [v36 setValue:v45 forColumnName:@"ad"];
    [v36 setValue:v44 forColumnName:@"creative"];
    [v36 setValue:v43 forColumnName:@"bundleId"];
    [v36 setValue:v42 forColumnName:@"searchTermId"];
    [v36 setValue:v41 forColumnName:@"adamId"];
    [v36 setValue:v40 forColumnName:@"adType"];
    [v36 setValue:v39 forColumnName:@"adFormatType"];
    [v36 setValue:v28 forColumnName:@"containerType"];
    [v36 setRelay:v29];
    [v36 setValue:v30 forColumnName:@"adMetadata"];
    [v36 setValue:v31 forColumnName:@"propertiesJSON"];
    [v36 setValue:v32 forColumnName:@"brand"];
    [v36 setValue:v33 forColumnName:@"advertiserCategory"];
    [v36 setValue:v34 forColumnName:@"accountToken"];
  }

  return v36;
}

- (id)initImpressionId:(id)a3 accountToken:(id)a4 table:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = APDBAdInstanceRow;
  v10 = [(APDBAdInstanceRow *)&v13 initWithTable:a5];
  v11 = v10;
  if (v10)
  {
    [(APDBAdInstanceRow *)v10 setValue:v8 forColumnName:@"impressionId"];
    [(APDBAdInstanceRow *)v11 setValue:v9 forColumnName:@"accountToken"];
  }

  return v11;
}

- (BOOL)updateNotNilColumns
{
  v3 = [(APDBAdInstanceRow *)self manager];
  v4 = v3;
  if (v3)
  {
    v35 = self;
    v36 = v3;
    v5 = [(APDBAdInstanceRow *)self columns];
    v6 = [v5 allValues];

    v38 = objc_alloc_init(NSMutableArray);
    v37 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v39 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v41;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = [v14 isEqualToString:@"impressionId"];

          if (v15)
          {
            v16 = v13;

            v10 = v16;
          }

          v17 = [v13 value];
          if (v17)
          {
            v18 = v17;
            v19 = [v13 name];
            if ([v19 isEqualToString:@"rowid"])
            {
            }

            else
            {
              v20 = [v13 name];
              v21 = [v20 isEqualToString:@"accountToken"];

              v7 = v39;
              if ((v21 & 1) == 0)
              {
                v22 = [v13 name];
                v23 = [NSString stringWithFormat:@"%@=?", v22];
                [v38 addObject:v23];

                [v37 addObject:v13];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v26 = [v10 value];

    if (v26)
    {
      v27 = v37;
      [v37 addObject:v10];
      v28 = [(APDBAdInstanceRow *)v35 tableName];
      v29 = v38;
      v30 = [v38 componentsJoinedByString:{@", "}];
      v31 = [NSString stringWithFormat:@"UPDATE %@ SET %@ WHERE impressionId=?", v28, v30];

      v7 = v39;
      v4 = v36;
      v25 = [v36 executeQuery:v31 withParameters:v37];
    }

    else
    {
      v31 = APLogForCategory();
      v27 = v37;
      v29 = v38;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138477827;
        v46 = v32;
        v33 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{private}@]: ImpressionId is nil when trying to update row.", buf, 0xCu);
      }

      v25 = 0;
      v4 = v36;
    }
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v46 = objc_opt_class();
      v24 = v46;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

@end