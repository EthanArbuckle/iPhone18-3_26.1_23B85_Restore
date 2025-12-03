@interface APDBAdInstanceRow
- (BOOL)updateNotNilColumns;
- (id)initImpressionId:(id)id accountToken:(id)token table:(id)table;
- (id)initImpressionId:(id)id campaign:(id)campaign adGroup:(id)group ad:(id)ad creative:(id)creative bundleId:(id)bundleId searchTermId:(id)termId adamId:(id)self0 adType:(id)self1 adFormatType:(id)self2 containerType:(id)self3 relay:(id)self4 adMetadata:(id)self5 propertiesJSON:(id)self6 brand:(id)self7 advertiserCategory:(id)self8 accountToken:(id)self9 table:(id)table;
- (id)readOnlyColumns;
@end

@implementation APDBAdInstanceRow

- (id)readOnlyColumns
{
  v3 = [NSSet setWithObjects:@"relay", @"allEvents", @"impressionEvents", @"interactedEvents", 0];
  v7.receiver = self;
  v7.super_class = APDBAdInstanceRow;
  readOnlyColumns = [(APDBAdInstanceRow *)&v7 readOnlyColumns];
  v5 = [v3 setByAddingObjectsFromSet:readOnlyColumns];

  return v5;
}

- (id)initImpressionId:(id)id campaign:(id)campaign adGroup:(id)group ad:(id)ad creative:(id)creative bundleId:(id)bundleId searchTermId:(id)termId adamId:(id)self0 adType:(id)self1 adFormatType:(id)self2 containerType:(id)self3 relay:(id)self4 adMetadata:(id)self5 propertiesJSON:(id)self6 brand:(id)self7 advertiserCategory:(id)self8 accountToken:(id)self9 table:(id)table
{
  idCopy = id;
  campaignCopy = campaign;
  groupCopy = group;
  adCopy = ad;
  creativeCopy = creative;
  bundleIdCopy = bundleId;
  termIdCopy = termId;
  adamIdCopy = adamId;
  typeCopy = type;
  v27 = campaignCopy;
  formatTypeCopy = formatType;
  containerTypeCopy = containerType;
  relayCopy = relay;
  metadataCopy = metadata;
  nCopy = n;
  brandCopy = brand;
  categoryCopy = category;
  tokenCopy = token;
  v47.receiver = self;
  v47.super_class = APDBAdInstanceRow;
  v35 = [(APDBAdInstanceRow *)&v47 initAsNewObjectWithTable:table];
  v36 = v35;
  if (v35)
  {
    [v35 setValue:idCopy forColumnName:@"impressionId"];
    [v36 setValue:v27 forColumnName:@"campaign"];
    [v36 setValue:groupCopy forColumnName:@"adGroup"];
    [v36 setValue:adCopy forColumnName:@"ad"];
    [v36 setValue:creativeCopy forColumnName:@"creative"];
    [v36 setValue:bundleIdCopy forColumnName:@"bundleId"];
    [v36 setValue:termIdCopy forColumnName:@"searchTermId"];
    [v36 setValue:adamIdCopy forColumnName:@"adamId"];
    [v36 setValue:typeCopy forColumnName:@"adType"];
    [v36 setValue:formatTypeCopy forColumnName:@"adFormatType"];
    [v36 setValue:containerTypeCopy forColumnName:@"containerType"];
    [v36 setRelay:relayCopy];
    [v36 setValue:metadataCopy forColumnName:@"adMetadata"];
    [v36 setValue:nCopy forColumnName:@"propertiesJSON"];
    [v36 setValue:brandCopy forColumnName:@"brand"];
    [v36 setValue:categoryCopy forColumnName:@"advertiserCategory"];
    [v36 setValue:tokenCopy forColumnName:@"accountToken"];
  }

  return v36;
}

- (id)initImpressionId:(id)id accountToken:(id)token table:(id)table
{
  idCopy = id;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = APDBAdInstanceRow;
  v10 = [(APDBAdInstanceRow *)&v13 initWithTable:table];
  v11 = v10;
  if (v10)
  {
    [(APDBAdInstanceRow *)v10 setValue:idCopy forColumnName:@"impressionId"];
    [(APDBAdInstanceRow *)v11 setValue:tokenCopy forColumnName:@"accountToken"];
  }

  return v11;
}

- (BOOL)updateNotNilColumns
{
  manager = [(APDBAdInstanceRow *)self manager];
  v4 = manager;
  if (manager)
  {
    selfCopy = self;
    v36 = manager;
    columns = [(APDBAdInstanceRow *)self columns];
    allValues = [columns allValues];

    v38 = objc_alloc_init(NSMutableArray);
    v37 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = allValues;
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
          name = [v13 name];
          v15 = [name isEqualToString:@"impressionId"];

          if (v15)
          {
            v16 = v13;

            v10 = v16;
          }

          value = [v13 value];
          if (value)
          {
            v18 = value;
            name2 = [v13 name];
            if ([name2 isEqualToString:@"rowid"])
            {
            }

            else
            {
              name3 = [v13 name];
              v21 = [name3 isEqualToString:@"accountToken"];

              v7 = v39;
              if ((v21 & 1) == 0)
              {
                name4 = [v13 name];
                v23 = [NSString stringWithFormat:@"%@=?", name4];
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

    value2 = [v10 value];

    if (value2)
    {
      v27 = v37;
      [v37 addObject:v10];
      tableName = [(APDBAdInstanceRow *)selfCopy tableName];
      v29 = v38;
      v30 = [v38 componentsJoinedByString:{@", "}];
      v31 = [NSString stringWithFormat:@"UPDATE %@ SET %@ WHERE impressionId=?", tableName, v30];

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