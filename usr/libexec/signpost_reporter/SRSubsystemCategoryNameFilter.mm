@interface SRSubsystemCategoryNameFilter
- (BOOL)shouldReportObject:(id)a3;
- (SRSubsystemCategoryNameFilter)initWithDictionaryArray:(id)a3;
- (id)downsampleEntryForObject:(id)a3;
- (void)addEntryWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 cap:(unint64_t)a6 downsampleRatio:(unint64_t)a7;
@end

@implementation SRSubsystemCategoryNameFilter

- (SRSubsystemCategoryNameFilter)initWithDictionaryArray:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v30.receiver = self;
  v30.super_class = SRSubsystemCategoryNameFilter;
  self = [(SRSubsystemCategoryNameFilter *)&v30 init];
  if (!self)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(FilterRootTier);
  filterTreeRoot = self->_filterTreeRoot;
  self->_filterTreeRoot = &v5->super;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v27;
  v24 = v4;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v26 + 1) + 8 * i);
      v12 = [v11 objectForKeyedSubscript:{@"Subsystem", v24}];
      if (!v12)
      {
        v13 = sub_100002620();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C000();
        }

        goto LABEL_23;
      }

      v13 = v12;
      v14 = [v11 objectForKeyedSubscript:@"Cap"];
      if (!v14)
      {
        v21 = sub_100002620();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_10000BFCC();
        }

        goto LABEL_23;
      }

      v15 = v14;
      v16 = [v11 objectForKeyedSubscript:@"DownsampleRatio"];
      if (!v16)
      {
        v22 = sub_100002620();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10000BF98();
        }

LABEL_23:
        v4 = v24;

        goto LABEL_24;
      }

      v17 = v16;
      v18 = [v11 objectForKeyedSubscript:@"Category"];
      v19 = [v11 objectForKeyedSubscript:@"Name"];
      -[SRSubsystemCategoryNameFilter addEntryWithSubsystem:category:name:cap:downsampleRatio:](self, "addEntryWithSubsystem:category:name:cap:downsampleRatio:", v13, v18, v19, [v15 unsignedLongLongValue], objc_msgSend(v17, "unsignedLongLongValue"));
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    v4 = v24;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_14:
  self = self;
  v20 = self;
LABEL_25:

  return v20;
}

- (BOOL)shouldReportObject:(id)a3
{
  v3 = [(SRSubsystemCategoryNameFilter *)self downsampleEntryForObject:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 shouldReportThisTime];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)downsampleEntryForObject:(id)a3
{
  v4 = a3;
  v5 = [FilterQuery alloc];
  v6 = [v4 subsystem];
  v7 = [v4 category];
  v8 = [v4 name];

  v9 = [(FilterQuery *)v5 initWithSubsystem:v6 category:v7 name:v8];
  v10 = [(SRSubsystemCategoryNameFilter *)self filterTreeRoot];
  v11 = [v10 entryForQuery:v9];

  return v11;
}

- (void)addEntryWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 cap:(unint64_t)a6 downsampleRatio:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = [[FilterQuery alloc] initWithSubsystem:v14 category:v13 name:v12];

  v15 = [(SRSubsystemCategoryNameFilter *)self filterTreeRoot];
  [v15 setCap:a6 downsampleRatio:a7 forQuery:v16];
}

@end