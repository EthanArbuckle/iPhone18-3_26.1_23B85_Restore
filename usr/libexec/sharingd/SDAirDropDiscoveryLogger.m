@interface SDAirDropDiscoveryLogger
+ (id)discoverabilityMetricsForNode:(__SFNode *)a3;
+ (id)updateMetrics:(id)a3 withNode:(__SFNode *)a4;
- (SDAirDropDiscoveryLogger)init;
- (void)logMetricsWithSessionTime:(double)a3;
- (void)updateWithAirDropNodes:(id)a3;
@end

@implementation SDAirDropDiscoveryLogger

- (SDAirDropDiscoveryLogger)init
{
  v6.receiver = self;
  v6.super_class = SDAirDropDiscoveryLogger;
  v2 = [(SDAirDropDiscoveryLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    realNameToMetricsMap = v2->_realNameToMetricsMap;
    v2->_realNameToMetricsMap = v3;
  }

  return v2;
}

- (void)updateWithAirDropNodes:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = SFNodeCopyRealName();
        v11 = [(NSMutableDictionary *)self->_realNameToMetricsMap objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = objc_opt_new();
        }

        v12 = [SDAirDropDiscoveryLogger updateMetrics:v11 withNode:v9];

        [(NSMutableDictionary *)self->_realNameToMetricsMap setObject:v12 forKeyedSubscript:v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)logMetricsWithSessionTime:(double)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_realNameToMetricsMap allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v17 = @"sessionTime";
        if (a3 == 0.0)
        {
          v11 = &off_10090BDC0;
        }

        else
        {
          v3 = [NSNumber numberWithDouble:a3];
          v11 = v3;
        }

        v18 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v10 addEntriesFromDictionary:v12];

        if (a3 != 0.0)
        {
        }

        SFMetricsLog();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

+ (id)updateMetrics:(id)a3 withNode:(__SFNode *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"contactLevel"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  v54 = v7;

  v8 = [v5 objectForKeyedSubscript:@"foundBonjour"];
  v59 = [v8 BOOLValueSafe];

  v9 = [v5 objectForKeyedSubscript:@"foundRapport"];
  v56 = [v9 BOOLValueSafe];

  v10 = [v5 objectForKeyedSubscript:@"rpFlagMyiCloud"];
  v11 = [v10 BOOLValueSafe];

  v12 = [v5 objectForKeyedSubscript:@"rpFlagFriend"];
  v13 = [v12 BOOLValueSafe];

  v14 = [v5 objectForKeyedSubscript:@"rpFlagFamily"];
  v15 = [v14 BOOLValueSafe];

  v16 = [v5 objectForKeyedSubscript:@"rpFlagSharedHome"];
  v17 = [v16 BOOLValueSafe];

  v18 = [v5 objectForKeyedSubscript:@"rpFlagStranger"];
  v19 = [v18 BOOLValueSafe];

  v20 = SFNodeCopySiblingNodes();
  v21 = [v20 mutableCopy];

  if (!v21)
  {
    v21 = [[NSArray alloc] initWithObjects:{a4, 0}];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v21;
  v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v55)
  {
    v49 = v5;
    v22 = 0;
    v23 = 0;
    v53 = *v61;
    v52 = kSFNodeKindBonjour;
    v51 = kSFNodeKindRapport;
    v24 = v56;
    do
    {
      v25 = 0;
      v26 = v22;
      v27 = v23;
      do
      {
        v58 = v26;
        if (*v61 != v53)
        {
          objc_enumerationMutation(obj);
        }

        if (*(*(&v60 + 1) + 8 * v25))
        {
          v28 = *(*(&v60 + 1) + 8 * v25);
          v57 = v24;
          v29 = v11;
          v30 = v13;
          v31 = v15;
          v32 = v17;
          v33 = v19;
          v34 = sub_100090360();
          v35 = SFNodeCopyContactIdentifier();
          v36 = SFNodeCopyUserName();
          v37 = 2;
          if (!v36)
          {
            v37 = 3;
          }

          if (v35)
          {
            v37 = 1;
          }

          v38 = (v34 & 1) == 0;
          LOBYTE(v19) = v33;
          LOBYTE(v17) = v32;
          LOBYTE(v15) = v31;
          LOBYTE(v13) = v30;
          LOBYTE(v11) = v29;
          v24 = v57;
          if (!v38)
          {
            v37 = 0;
          }

          v54 = v37;
        }

        else
        {
          v54 = -1;
        }

        v23 = SFNodeCopyKinds();

        v59 |= [v23 containsObject:v52];
        v24 |= [v23 containsObject:v51];
        v22 = SFNodeCopyRapportFlags();

        v39 = [v22 unsignedIntegerValue];
        v11 = ((v39 | v11) & 1);
        v13 = (v13 & 1u | ((v39 & 4) != 0));
        v15 = (v15 & 1u | ((v39 & 8) != 0));
        v17 = (v17 & 1u | ((v39 & 0x40) != 0));
        v19 = ((v19 | HIBYTE(v39)) & 1);
        v25 = v25 + 1;
        v26 = v22;
        v27 = v23;
      }

      while (v55 != v25);
      v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v55);
    LOBYTE(v56) = v24;

    v5 = v49;
  }

  v40 = [NSNumber numberWithInteger:v54];
  [v5 setObject:v40 forKeyedSubscript:@"contactLevel"];

  v41 = [NSNumber numberWithBool:v59 & 1];
  [v5 setObject:v41 forKeyedSubscript:@"foundBonjour"];

  v42 = [NSNumber numberWithBool:v56 & 1];
  [v5 setObject:v42 forKeyedSubscript:@"foundRapport"];

  v43 = [NSNumber numberWithBool:v11];
  [v5 setObject:v43 forKeyedSubscript:@"rpFlagMyiCloud"];

  v44 = [NSNumber numberWithBool:v13];
  [v5 setObject:v44 forKeyedSubscript:@"rpFlagFriend"];

  v45 = [NSNumber numberWithBool:v15];
  [v5 setObject:v45 forKeyedSubscript:@"rpFlagFamily"];

  v46 = [NSNumber numberWithBool:v17];
  [v5 setObject:v46 forKeyedSubscript:@"rpFlagSharedHome"];

  v47 = [NSNumber numberWithBool:v19];
  [v5 setObject:v47 forKeyedSubscript:@"rpFlagStranger"];

  return v5;
}

+ (id)discoverabilityMetricsForNode:(__SFNode *)a3
{
  v4 = objc_opt_new();
  v5 = [SDAirDropDiscoveryLogger updateMetrics:v4 withNode:a3];

  return v5;
}

@end