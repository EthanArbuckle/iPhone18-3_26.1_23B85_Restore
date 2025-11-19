@interface CEMDeviceInformationCommand
+ (id)deviceInfoDeviceChannelKeys;
+ (id)deviceInfoKeyFromDMFKey:(id)a3;
+ (id)deviceInfoRMDKeys;
+ (id)deviceInfoSupervisedKeys;
+ (id)deviceInfoUserChannelKeys;
+ (id)dmfKeyFromDeviceInfoKey:(id)a3;
- (id)dmf_executeRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_statusForResult:(id)a3 context:(id)a4;
- (id)filterQueryForScope;
- (void)addRMDSpecificResultsToDictionary:(id)a3 errors:(id)a4;
@end

@implementation CEMDeviceInformationCommand

+ (id)deviceInfoSupervisedKeys
{
  if (qword_1000FEEC0 != -1)
  {
    sub_10007BBE0();
  }

  v3 = qword_1000FEEC8;

  return v3;
}

+ (id)deviceInfoDeviceChannelKeys
{
  if (qword_1000FEED0 != -1)
  {
    sub_10007BBF4();
  }

  v3 = qword_1000FEED8;

  return v3;
}

+ (id)deviceInfoUserChannelKeys
{
  if (qword_1000FEEE0 != -1)
  {
    sub_10007BC08();
  }

  v3 = qword_1000FEEE8;

  return v3;
}

+ (id)deviceInfoRMDKeys
{
  if (qword_1000FEEF0 != -1)
  {
    sub_10007BC1C();
  }

  v3 = qword_1000FEEF8;

  return v3;
}

+ (id)dmfKeyFromDeviceInfoKey:(id)a3
{
  v3 = qword_1000FEF00;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10007BC30();
  }

  v5 = [qword_1000FEF08 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)deviceInfoKeyFromDMFKey:(id)a3
{
  v3 = qword_1000FEF10;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10007BC44();
  }

  v5 = [qword_1000FEF18 objectForKeyedSubscript:v4];

  return v5;
}

- (id)dmf_executeRequestWithContext:(id)a3 error:(id *)a4
{
  v4 = [(CEMDeviceInformationCommand *)self filterQueryForScope:a3];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CEMDeviceInformationCommand dmfKeyFromDeviceInfoKey:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = objc_opt_new();
  [v12 setPropertyKeys:v5];

  return v12;
}

- (id)dmf_statusForResult:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v5;
    v48 = self;
    v6 = v5;
    v7 = [v6 valuesByPropertyKey];
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);

    v9 = [v6 errorsByPropertyKey];
    v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v50 = v6;
    v11 = [v6 valuesByPropertyKey];
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v60;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v59 + 1) + 8 * i);
          v17 = [CEMDeviceInformationCommand deviceInfoKeyFromDMFKey:v16];
          v18 = [v50 valuesByPropertyKey];
          v19 = [v18 objectForKeyedSubscript:v16];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v69 = @"Code";
            v70 = @"Not Supported";
            v20 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            [v10 setObject:v20 forKeyedSubscript:v17];
          }

          else
          {
            [v8 setObject:v19 forKeyedSubscript:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v13);
    }

    v46 = v8;

    v21 = [(CEMDeviceInformationCommand *)v48 payloadQueries];
    v22 = [NSMutableSet setWithArray:v21];

    v23 = [(CEMDeviceInformationCommand *)v48 filterQueryForScope];
    [v22 minusSet:v23];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v55 + 1) + 8 * j);
          v66 = @"Code";
          v67 = @"Not Allowed";
          v30 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          [v10 setObject:v30 forKeyedSubscript:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v26);
    }

    v44 = v24;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v50 errorsByPropertyKey];
    v31 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v52;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v51 + 1) + 8 * k);
          v36 = [CEMDeviceInformationCommand deviceInfoKeyFromDMFKey:v35, v44];
          v37 = [v50 errorsByPropertyKey];
          v38 = [v37 objectForKeyedSubscript:v35];

          v63[1] = @"ErrorChain";
          v64[0] = @"Failed";
          v63[0] = @"Code";
          v39 = DMDErrorChainFromError(v38);
          v64[1] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
          [v10 setObject:v40 forKeyedSubscript:v36];
        }

        v32 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v32);
    }

    [(CEMDeviceInformationCommand *)v48 addRMDSpecificResultsToDictionary:v46 errors:v10];
    v41 = [NSMutableDictionary dictionaryWithCapacity:2];
    [v41 setObject:v46 forKeyedSubscript:@"QueryResponses"];
    v5 = v47;
    if ([v10 count])
    {
      [v41 setObject:v10 forKeyedSubscript:@"ErrorResponses"];
    }

    v42 = [v41 copy];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (id)filterQueryForScope
{
  v2 = [(CEMDeviceInformationCommand *)self payloadQueries];
  v3 = [NSMutableSet setWithArray:v2];

  v4 = +[CEMDeviceInformationCommand deviceInfoDeviceChannelKeys];
  [v3 intersectSet:v4];

  v5 = +[CEMDeviceInformationCommand deviceInfoRMDKeys];
  [v3 minusSet:v5];

  return v3;
}

- (void)addRMDSpecificResultsToDictionary:(id)a3 errors:(id)a4
{
  v5 = a4;
  v6 = [(CEMDeviceInformationCommand *)self payloadQueries];
  v7 = [NSMutableSet setWithArray:v6];

  v8 = +[CEMDeviceInformationCommand deviceInfoRMDKeys];
  [v7 intersectSet:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v20 = @"Code";
        v21 = @"Not Supported";
        v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1, v16];
        [v5 setObject:v15 forKeyedSubscript:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }
}

@end