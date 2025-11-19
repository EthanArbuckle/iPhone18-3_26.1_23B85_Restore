@interface MIDiskUsageGatherer
- (MIDiskUsageGatherer)initWithIdentifiers:(id)a3 options:(id)a4;
- (id)_gatherForIdentifier:(id)a3;
- (id)gatherUsageInfoWithError:(id *)a3;
@end

@implementation MIDiskUsageGatherer

- (MIDiskUsageGatherer)initWithIdentifiers:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MIDiskUsageGatherer;
  v9 = [(MIDiskUsageGatherer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, a3);
    v11 = [v8 objectForKeyedSubscript:@"DynamicDiskUsage"];
    v10->_calcDynamic = sub_100010A60(v11, 0);

    v12 = [v8 objectForKeyedSubscript:@"SharedDiskUsage"];
    v10->_calcShared = sub_100010A60(v12, 0);

    v13 = [v8 objectForKeyedSubscript:@"StaticDiskUsage"];
    v10->_calcStatic = sub_100010A60(v13, 0);
  }

  return v10;
}

- (id)_gatherForIdentifier:(id)a3
{
  v26 = a3;
  sub_100054628(v26);
  v4 = [(MIDiskUsageGatherer *)self calcDynamic];
  v5 = [(MIDiskUsageGatherer *)self calcShared];
  v6 = [(MIDiskUsageGatherer *)self calcStatic];
  v7 = 2;
  if (!v4)
  {
    v7 = 0;
  }

  if (v5)
  {
    v7 |= 8uLL;
  }

  v31 = 0;
  v8 = [MIContainer allContainersForAllPersonasForIdentifier:v26 options:v7 | v6 error:&v31];
  v25 = v31;
  if (v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v24 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (v10)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if ([(MIDiskUsageGatherer *)self calcStatic]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v13 += [v16 diskUsage];
          }

          else if ([(MIDiskUsageGatherer *)self calcShared]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v11 += [v16 diskUsage];
          }

          else if ([(MIDiskUsageGatherer *)self calcDynamic])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 += [v16 diskUsage];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v8 = v24;
    v17 = objc_opt_new();
    if ([(MIDiskUsageGatherer *)self calcStatic])
    {
      v18 = [NSNumber numberWithUnsignedLongLong:v13];
      [v17 setObject:v18 forKeyedSubscript:@"StaticDiskUsage"];
    }

    if ([(MIDiskUsageGatherer *)self calcDynamic])
    {
      v19 = [NSNumber numberWithUnsignedLongLong:v12];
      [v17 setObject:v19 forKeyedSubscript:@"DynamicDiskUsage"];
    }

    if ([(MIDiskUsageGatherer *)self calcShared])
    {
      v20 = [NSNumber numberWithUnsignedLongLong:v11];
      [v17 setObject:v20 forKeyedSubscript:@"SharedDiskUsage"];
    }

    v21 = 0;
  }

  else
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      MOLogWrite();
    }

    v21 = 8;
  }

  sub_100054780(v26);
  if ((v21 | 8) == 8)
  {
    v22 = v25;
    v8 = [v17 copy];
  }

  else
  {
    v22 = v25;
  }

  return v8;
}

- (id)gatherUsageInfoWithError:(id *)a3
{
  v5 = objc_opt_new();
  if (![(MIDiskUsageGatherer *)self calcDynamic]&& ![(MIDiskUsageGatherer *)self calcStatic]&& ![(MIDiskUsageGatherer *)self calcShared])
  {
    v15 = sub_100010734("[MIDiskUsageGatherer gatherUsageInfoWithError:]", 138, MIInstallerErrorDomain, 25, 0, 0, @"No usage type to fetch specified.", v6, v17);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(MIDiskUsageGatherer *)self identifiers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(MIDiskUsageGatherer *)self _gatherForIdentifier:v12];
          if (v13)
          {
            [v5 setObject:v13 forKeyedSubscript:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = v5;
  v15 = 0;
  if (a3)
  {
LABEL_16:
    if (!v14)
    {
      v15 = v15;
      *a3 = v15;
    }
  }

LABEL_18:

  return v14;
}

@end