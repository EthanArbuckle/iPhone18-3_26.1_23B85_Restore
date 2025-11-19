@interface APAttributionPayloadSerializer
+ (id)deserializePayload:(id)a3 error:(id *)a4;
+ (id)serializePayload:(id)a3 error:(id *)a4;
@end

@implementation APAttributionPayloadSerializer

+ (id)serializePayload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 header];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 body];
  if (!v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v6 url];
  if (!v11)
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v6 url];
  v14 = [v13 path];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v6 bundleID];

  if (v16)
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:2];
    v18 = [v6 header];
    [v17 setObject:v18 forKey:@"header"];

    v19 = [v6 body];
    [v17 setObject:v19 forKey:@"body"];

    v20 = [v6 url];
    v21 = [v20 path];
    [v17 setObject:v21 forKey:@"url"];

    v22 = [v6 bundleID];
    [v17 setObject:v22 forKey:@"bundleID"];

    a4 = [NSJSONSerialization dataWithJSONObject:v17 options:0 error:a4];

    goto LABEL_13;
  }

LABEL_11:
  if (a4)
  {
    v25 = NSLocalizedDescriptionKey;
    v26 = @"error serializing payload one or more parameter is nil";
    v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v23];

    a4 = 0;
  }

LABEL_13:

  return a4;
}

+ (id)deserializePayload:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    a4 = 0;
    goto LABEL_24;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:a4];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  if ([v7 count] != 4)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

    v44 = NSLocalizedDescriptionKey;
    v45 = @"error deserializing the payload in correct parameters found";
    v30 = &v45;
    v31 = &v44;
    goto LABEL_21;
  }

  v9 = [v8 objectForKeyedSubscript:@"url"];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v8 objectForKeyedSubscript:@"bundleID"];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v8 objectForKeyedSubscript:@"header"];
  if (!v13)
  {

LABEL_18:
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v8 objectForKeyedSubscript:@"body"];

  if (!v15)
  {
LABEL_19:
    if (!a4)
    {
      goto LABEL_23;
    }

    v42 = NSLocalizedDescriptionKey;
    v43 = @"error deserializing the payload one or more parameters is nil";
    v30 = &v43;
    v31 = &v42;
    goto LABEL_21;
  }

  v16 = [v8 objectForKeyedSubscript:@"header"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

    v40 = NSLocalizedDescriptionKey;
    v41 = @"error deserializing incorrect class type found";
    v30 = &v41;
    v31 = &v40;
    goto LABEL_21;
  }

  v18 = [v8 objectForKeyedSubscript:@"body"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

    v38 = NSLocalizedDescriptionKey;
    v39 = @"error deserializing incorrect class type found";
    v30 = &v39;
    v31 = &v38;
    goto LABEL_21;
  }

  v20 = [v8 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if ((v21 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

    v36 = NSLocalizedDescriptionKey;
    v37 = @"error deserializing incorrect class type found";
    v30 = &v37;
    v31 = &v36;
    goto LABEL_21;
  }

  v22 = [v8 objectForKeyedSubscript:@"bundleID"];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if ((v23 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

    v34 = NSLocalizedDescriptionKey;
    v35 = @"error deserializing incorrect class type found";
    v30 = &v35;
    v31 = &v34;
LABEL_21:
    v32 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v32];

LABEL_22:
    a4 = 0;
    goto LABEL_23;
  }

  v24 = [AttributionPayload alloc];
  v25 = [v8 objectForKeyedSubscript:@"url"];
  v26 = [NSURL URLWithString:v25];
  v27 = [v8 objectForKeyedSubscript:@"bundleID"];
  v28 = [v8 objectForKeyedSubscript:@"header"];
  v29 = [v8 objectForKeyedSubscript:@"body"];
  a4 = [(AttributionPayload *)v24 initWithURL:v26 bundleID:v27 header:v28 body:v29];

LABEL_23:
LABEL_24:

  return a4;
}

@end