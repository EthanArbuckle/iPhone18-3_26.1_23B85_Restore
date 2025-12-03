@interface APAttributionPayloadSerializer
+ (id)deserializePayload:(id)payload error:(id *)error;
+ (id)serializePayload:(id)payload error:(id *)error;
@end

@implementation APAttributionPayloadSerializer

+ (id)serializePayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v6 = payloadCopy;
  if (!payloadCopy)
  {
    goto LABEL_11;
  }

  header = [payloadCopy header];
  if (!header)
  {
    goto LABEL_11;
  }

  v8 = header;
  body = [v6 body];
  if (!body)
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = body;
  v11 = [v6 url];
  if (!v11)
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v6 url];
  path = [v13 path];
  if (!path)
  {

    goto LABEL_9;
  }

  v15 = path;
  bundleID = [v6 bundleID];

  if (bundleID)
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:2];
    header2 = [v6 header];
    [v17 setObject:header2 forKey:@"header"];

    body2 = [v6 body];
    [v17 setObject:body2 forKey:@"body"];

    v20 = [v6 url];
    path2 = [v20 path];
    [v17 setObject:path2 forKey:@"url"];

    bundleID2 = [v6 bundleID];
    [v17 setObject:bundleID2 forKey:@"bundleID"];

    error = [NSJSONSerialization dataWithJSONObject:v17 options:0 error:error];

    goto LABEL_13;
  }

LABEL_11:
  if (error)
  {
    v25 = NSLocalizedDescriptionKey;
    v26 = @"error serializing payload one or more parameter is nil";
    v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v23];

    error = 0;
  }

LABEL_13:

  return error;
}

+ (id)deserializePayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v6 = payloadCopy;
  if (!payloadCopy || ![payloadCopy length])
  {
    error = 0;
    goto LABEL_24;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  if ([v7 count] != 4)
  {
    if (!error)
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
    if (!error)
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
    if (!error)
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
    if (!error)
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
    if (!error)
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
    if (!error)
    {
      goto LABEL_23;
    }

    v34 = NSLocalizedDescriptionKey;
    v35 = @"error deserializing incorrect class type found";
    v30 = &v35;
    v31 = &v34;
LABEL_21:
    v32 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v32];

LABEL_22:
    error = 0;
    goto LABEL_23;
  }

  v24 = [AttributionPayload alloc];
  v25 = [v8 objectForKeyedSubscript:@"url"];
  v26 = [NSURL URLWithString:v25];
  v27 = [v8 objectForKeyedSubscript:@"bundleID"];
  v28 = [v8 objectForKeyedSubscript:@"header"];
  v29 = [v8 objectForKeyedSubscript:@"body"];
  error = [(AttributionPayload *)v24 initWithURL:v26 bundleID:v27 header:v28 body:v29];

LABEL_23:
LABEL_24:

  return error;
}

@end