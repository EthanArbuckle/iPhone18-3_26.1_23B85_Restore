@interface FMDCodableFactory
+ (id)_defaultClassTypeMap;
+ (id)_defaultObjectTypeKeys;
- (Class)classForObjectInfo:(id)info;
- (FMDCodableFactory)init;
- (FMDCodableFactory)initWithClasses:(id)classes;
- (FMDCodableFactory)initWithObjectTypeKeys:(id)keys andClassMap:(id)map;
@end

@implementation FMDCodableFactory

- (FMDCodableFactory)init
{
  v8.receiver = self;
  v8.super_class = FMDCodableFactory;
  v2 = [(FMDCodableFactory *)&v8 init];
  if (v2)
  {
    v3 = +[FMDCodableFactory _defaultClassTypeMap];
    classTypeMapping = v2->_classTypeMapping;
    v2->_classTypeMapping = v3;

    v5 = +[FMDCodableFactory _defaultObjectTypeKeys];
    objectTypeKeys = v2->_objectTypeKeys;
    v2->_objectTypeKeys = v5;
  }

  return v2;
}

- (FMDCodableFactory)initWithClasses:(id)classes
{
  classesCopy = classes;
  v31.receiver = self;
  v31.super_class = FMDCodableFactory;
  v5 = [(FMDCodableFactory *)&v31 init];
  if (v5)
  {
    v6 = +[FMDCodableFactory _defaultClassTypeMap];
    v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

    v8 = +[FMDCodableFactory _defaultObjectTypeKeys];
    v9 = [NSMutableSet setWithArray:v8];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = classesCopy;
    v10 = classesCopy;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if ([v15 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
          {
            objectType = [v15 objectType];
            [(NSDictionary *)v7 setObject:v15 forKey:objectType];

            objectTypeKey = [v15 objectTypeKey];
            [v9 addObject:objectTypeKey];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v12);
    }

    classTypeMapping = v5->_classTypeMapping;
    v5->_classTypeMapping = v7;
    v19 = v7;

    allObjects = [v9 allObjects];
    objectTypeKeys = v5->_objectTypeKeys;
    v5->_objectTypeKeys = allObjects;

    v22 = sub_10017DAFC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      objectTypeKeys = [(FMDCodableFactory *)v5 objectTypeKeys];
      classTypeMapping = [(FMDCodableFactory *)v5 classTypeMapping];
      *buf = 138412802;
      v33 = v5;
      v34 = 2112;
      v35 = objectTypeKeys;
      v36 = 2112;
      v37 = classTypeMapping;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Factory(%@) classes with object mappings: %@ and map %@", buf, 0x20u);
    }

    classesCopy = v26;
  }

  return v5;
}

- (FMDCodableFactory)initWithObjectTypeKeys:(id)keys andClassMap:(id)map
{
  keysCopy = keys;
  mapCopy = map;
  v22.receiver = self;
  v22.super_class = FMDCodableFactory;
  v8 = [(FMDCodableFactory *)&v22 init];
  if (v8)
  {
    v9 = +[FMDCodableFactory _defaultClassTypeMap];
    v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

    [(NSDictionary *)v10 addEntriesFromDictionary:mapCopy];
    classTypeMapping = v8->_classTypeMapping;
    v8->_classTypeMapping = v10;
    v12 = v10;

    v13 = +[FMDCodableFactory _defaultObjectTypeKeys];
    v14 = [NSSet setWithArray:v13];

    v15 = [v14 setByAddingObjectsFromArray:keysCopy];
    allObjects = [v15 allObjects];
    objectTypeKeys = v8->_objectTypeKeys;
    v8->_objectTypeKeys = allObjects;

    v18 = sub_10017DAFC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      objectTypeKeys = [(FMDCodableFactory *)v8 objectTypeKeys];
      classTypeMapping = [(FMDCodableFactory *)v8 classTypeMapping];
      *buf = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = objectTypeKeys;
      v27 = 2112;
      v28 = classTypeMapping;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Factory(%@) key-value with object mappings: %@ and map %@", buf, 0x20u);
    }
  }

  return v8;
}

- (Class)classForObjectInfo:(id)info
{
  infoCopy = info;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = +[FMDCodableFactory _defaultClassTypeMap];
  allKeys = [v5 allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [infoCopy objectForKeyedSubscript:v11];

        if (v12)
        {
          v21 = +[FMDCodableFactory _defaultClassTypeMap];
          v22 = [v21 objectForKey:v11];

          goto LABEL_21;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  objectTypeKeys = [(FMDCodableFactory *)self objectTypeKeys];
  v14 = [objectTypeKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(objectTypeKeys);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        v19 = [infoCopy objectForKey:v18];

        if (v19)
        {
          classTypeMapping = [(FMDCodableFactory *)self classTypeMapping];
          v24 = [infoCopy objectForKey:v18];
          v20 = [classTypeMapping objectForKey:v24];

          goto LABEL_20;
        }
      }

      v15 = [objectTypeKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_20:

  v22 = v20;
LABEL_21:

  return v22;
}

+ (id)_defaultClassTypeMap
{
  if (qword_1003144F0 != -1)
  {
    sub_100226260();
  }

  v3 = qword_1003144E8;

  return v3;
}

+ (id)_defaultObjectTypeKeys
{
  v2 = +[NSNull objectTypeKey];
  v3 = +[NSURL objectTypeKey];
  v11[1] = v3;
  v4 = +[NSDate objectTypeKey];
  v11[2] = v4;
  v5 = +[NSNumber objectTypeKey];
  v11[3] = v5;
  v6 = +[NSString objectTypeKey];
  v11[4] = v6;
  v7 = +[NSArray objectTypeKey];
  v11[5] = v7;
  v8 = +[NSDictionary objectTypeKey];
  v11[6] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:7];

  return v9;
}

@end