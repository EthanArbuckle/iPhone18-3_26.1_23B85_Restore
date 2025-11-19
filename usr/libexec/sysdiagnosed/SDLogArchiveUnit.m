@interface SDLogArchiveUnit
+ (id)logArchiveUnitWithDictionary:(id)a3;
- (void)logArchiveOverride:(id)a3;
@end

@implementation SDLogArchiveUnit

+ (id)logArchiveUnitWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SDLogArchiveUnit;
  v5 = [objc_msgSendSuper2(&v9 "alloc")];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 mutableCopy];
    [v6 setArchive_arguments:v7];
  }

  return v6;
}

- (void)logArchiveOverride:(id)a3
{
  v4 = a3;
  v5 = [(SDLogArchiveUnit *)self archive_arguments];

  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(SDLogArchiveUnit *)self archive_arguments];
          v13 = [v6 objectForKeyedSubscript:v11];
          [v12 setValue:v13 forKey:v11];

          v14 = sub_1000278E8();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v6 objectForKeyedSubscript:v11];
            *buf = 138412546;
            v24 = v11;
            v25 = 2112;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updated %@ to %@", buf, 0x16u);
          }

          v16 = +[SDResourceManager sharedResourceManager];
          v17 = [v6 objectForKeyedSubscript:v11];
          [v16 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Updated %@ to %@", v11, v17}];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }

    v4 = v18;
  }
}

@end