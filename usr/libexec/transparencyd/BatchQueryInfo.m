@interface BatchQueryInfo
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
@end

@implementation BatchQueryInfo

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:[(BatchQueryInfo *)self status]];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  if ([(BatchQueryInfo *)self hasUriWitness])
  {
    v5 = [(BatchQueryInfo *)self uriWitness];
    v6 = [v5 diagnosticsJsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"uriWitness"];
  }

  if ([(BatchQueryInfo *)self hasMapEntry])
  {
    v7 = [(BatchQueryInfo *)self mapEntry];
    v8 = [v7 diagnosticsJsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"mapEntry"];
  }

  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(BatchQueryInfo *)self pendingSmtsArray];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [SignedMutationTimestamp signedTypeWithObject:*(*(&v18 + 1) + 8 * i)];
        v16 = [v15 diagnosticsJsonDictionary];
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    [v3 setObject:v9 forKeyedSubscript:@"pendingSmts"];
  }

  return v3;
}

+ (id)descriptor
{
  v2 = qword_10039C978;
  if (!qword_10039C978)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchQueryInfo messageName:@"BatchQueryInfo" fileDescription:&unk_10038AE48 fields:&off_10038AFE0 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF677];
    qword_10039C978 = v2;
  }

  return v2;
}

@end