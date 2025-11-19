@interface SWCDatabaseStorage
- (SWCDatabaseStorage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCDatabaseStorage

- (void)encodeWithCoder:(id)a3
{
  [SWCEntry canonicalizeEntries:self->_entries];
  [a3 encodeInt64:self->_databaseVersion forKey:@"databaseVersion"];
  [a3 encodeObject:self->_entries forKey:@"entries"];
  [a3 encodeObject:self->_settings forKey:@"settings"];
  [a3 encodeObject:self->_launchServicesDatabaseGeneration forKey:@"launchServicesDatabaseGeneration"];
  enterpriseState = self->_enterpriseState;

  [a3 encodeObject:enterpriseState forKey:@"enterpriseState"];
}

- (SWCDatabaseStorage)initWithCoder:(id)a3
{
  context = objc_autoreleasePoolPush();
  v49.receiver = self;
  v49.super_class = SWCDatabaseStorage;
  v5 = [(SWCDatabaseStorage *)&v49 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v5->_databaseVersion = [a3 decodeInt64ForKey:@"databaseVersion"];
  v6 = objc_opt_class();
  v36 = objc_opt_class();
  v7 = [NSSet alloc];
  v56[0] = objc_opt_class();
  v56[1] = v6;
  v8 = [NSArray arrayWithObjects:v56 count:2];
  v38 = [v7 initWithArray:v8];

  v9 = [NSSet alloc];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v55[2] = objc_opt_class();
  v55[3] = objc_opt_class();
  v55[4] = objc_opt_class();
  v55[5] = objc_opt_class();
  v55[6] = v36;
  v10 = [NSArray arrayWithObjects:v55 count:7];
  v37 = [v9 initWithArray:v10];

  v11 = [a3 swc_decodeObjectOfClasses:v38 forKey:@"entries"];
  v12 = [a3 swc_decodeObjectOfClasses:v37 forKey:@"settings"];
  v13 = [a3 swc_decodeObjectOfClass:objc_opt_class() forKey:@"launchServicesDatabaseGeneration"];
  v14 = [a3 swc_decodeObjectOfClass:objc_opt_class() forKey:@"enterpriseState"];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:
      v22 = [NSError alloc];
      v52[0] = @"Line";
      v52[1] = @"Function";
      v53[0] = &off_100036858;
      entries = [NSString stringWithUTF8String:"[SWCDatabaseStorage initWithCoder:]"];
      v53[1] = entries;
      v23 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      v24 = [v22 initWithDomain:NSCocoaErrorDomain code:4864 userInfo:v23];
      [a3 failWithError:v24];

      goto LABEL_17;
    }

    [SWCEntry canonicalizeEntries:v11];
    v35 = v14;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v16)
    {
      v17 = *v46;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v14 = v35;
            goto LABEL_16;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v14 = v35;
    v20 = v15;
  }

  else
  {
    v20 = objc_alloc_init(NSOrderedSet);
  }

  entries = v5->_entries;
  v5->_entries = v20;
LABEL_17:

  if (v12)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = _NSIsNSDictionary();
    if (*(v42 + 24) == 1 && (v40[0] = _NSConcreteStackBlock, v40[1] = 3221225472, v40[2] = sub_100010D78, v40[3] = &unk_100034D30, v40[4] = &v41, v40[5] = v36, [v12 enumerateKeysAndObjectsUsingBlock:v40], (v42[3] & 1) != 0))
    {
      v25 = v12;
      settings = v5->_settings;
      v5->_settings = v25;
    }

    else
    {
      v27 = [NSError alloc];
      v50[0] = @"Line";
      v50[1] = @"Function";
      v51[0] = &off_100036870;
      settings = [NSString stringWithUTF8String:"[SWCDatabaseStorage initWithCoder:]"];
      v51[1] = settings;
      v28 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
      v29 = [v27 initWithDomain:NSCocoaErrorDomain code:4864 userInfo:v28];
      [a3 failWithError:v29];
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v30 = v5->_settings;
    v5->_settings = &__NSDictionary0__struct;
  }

  launchServicesDatabaseGeneration = v5->_launchServicesDatabaseGeneration;
  v5->_launchServicesDatabaseGeneration = v13;
  v32 = v13;

  enterpriseState = v5->_enterpriseState;
  v5->_enterpriseState = v14;

LABEL_25:
  objc_autoreleasePoolPop(context);
  return v5;
}

@end