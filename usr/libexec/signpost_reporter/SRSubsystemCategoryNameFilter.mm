@interface SRSubsystemCategoryNameFilter
- (BOOL)shouldReportObject:(id)object;
- (SRSubsystemCategoryNameFilter)initWithDictionaryArray:(id)array;
- (id)downsampleEntryForObject:(id)object;
- (void)addEntryWithSubsystem:(id)subsystem category:(id)category name:(id)name cap:(unint64_t)cap downsampleRatio:(unint64_t)ratio;
@end

@implementation SRSubsystemCategoryNameFilter

- (SRSubsystemCategoryNameFilter)initWithDictionaryArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
LABEL_24:
    selfCopy = 0;
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
  obj = arrayCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *v27;
  v24 = arrayCopy;
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
        arrayCopy = v24;

        goto LABEL_24;
      }

      v17 = v16;
      v18 = [v11 objectForKeyedSubscript:@"Category"];
      v19 = [v11 objectForKeyedSubscript:@"Name"];
      -[SRSubsystemCategoryNameFilter addEntryWithSubsystem:category:name:cap:downsampleRatio:](self, "addEntryWithSubsystem:category:name:cap:downsampleRatio:", v13, v18, v19, [v15 unsignedLongLongValue], objc_msgSend(v17, "unsignedLongLongValue"));
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    arrayCopy = v24;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

- (BOOL)shouldReportObject:(id)object
{
  v3 = [(SRSubsystemCategoryNameFilter *)self downsampleEntryForObject:object];
  v4 = v3;
  if (v3)
  {
    shouldReportThisTime = [v3 shouldReportThisTime];
  }

  else
  {
    shouldReportThisTime = 1;
  }

  return shouldReportThisTime;
}

- (id)downsampleEntryForObject:(id)object
{
  objectCopy = object;
  v5 = [FilterQuery alloc];
  subsystem = [objectCopy subsystem];
  category = [objectCopy category];
  name = [objectCopy name];

  v9 = [(FilterQuery *)v5 initWithSubsystem:subsystem category:category name:name];
  filterTreeRoot = [(SRSubsystemCategoryNameFilter *)self filterTreeRoot];
  v11 = [filterTreeRoot entryForQuery:v9];

  return v11;
}

- (void)addEntryWithSubsystem:(id)subsystem category:(id)category name:(id)name cap:(unint64_t)cap downsampleRatio:(unint64_t)ratio
{
  nameCopy = name;
  categoryCopy = category;
  subsystemCopy = subsystem;
  v16 = [[FilterQuery alloc] initWithSubsystem:subsystemCopy category:categoryCopy name:nameCopy];

  filterTreeRoot = [(SRSubsystemCategoryNameFilter *)self filterTreeRoot];
  [filterTreeRoot setCap:cap downsampleRatio:ratio forQuery:v16];
}

@end