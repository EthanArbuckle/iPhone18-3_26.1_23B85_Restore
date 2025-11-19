@interface HAPDataStreamTransportSupportedConfiguration
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDataStreamTransportSupportedConfiguration)init;
- (HAPDataStreamTransportSupportedConfiguration)initWithConfigurations:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDataStreamTransportSupportedConfiguration

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDataStreamTransportSupportedConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportSupportedConfiguration *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (HAPDataStreamTransportSupportedConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportSupportedConfiguration;
  return [(HAPDataStreamTransportSupportedConfiguration *)&v3 init];
}

- (HAPDataStreamTransportSupportedConfiguration)initWithConfigurations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPDataStreamTransportSupportedConfiguration;
  v5 = [(HAPDataStreamTransportSupportedConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    configurations = v5->_configurations;
    v5->_configurations = v6;
  }

  return v5;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = +[NSMutableArray array];
  if (v8 < 1)
  {
LABEL_18:
    [(HAPDataStreamTransportSupportedConfiguration *)self setConfigurations:v9];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    v10 = 0;
    v11 = v7 + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v23)
      {
        v18 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

        v10 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (v24 == 1)
      {
        v21 = v10;
        v13 = sub_100021B74(1, v7, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAPDataStreamTransportConfiguration parsedFromData:v13 error:&v20];
          v14 = v20;
          if (!v14)
          {
            [v9 addObject:v15];
          }
        }

        v10 = v14;
      }

      v7 = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4)
        {
          v16 = v10;
          v17 = 0;
          *a4 = v10;
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if (a4)
    {
      sub_100041618(Next);
      *a4 = v17 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (id)serializeWithError:(id *)a3
{
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  TLV8BufferInit();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(HAPDataStreamTransportSupportedConfiguration *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {
LABEL_17:

    v19 = [NSData dataWithBytes:v31 length:?];
    v20 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v27;
  v9 = 1;
  v24 = a3;
  while (1)
  {
    v10 = 0;
LABEL_4:
    if (*v27 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v11 = *(*(&v26 + 1) + 8 * v10);
    if ((v9 & 1) == 0)
    {
      v12 = TLV8BufferAppend();
      if (v12)
      {
        v21 = v12;
LABEL_19:

        if (v24)
        {
          sub_100041618(v21);
          v20 = 0;
          *v24 = v19 = 0;
          goto LABEL_23;
        }

        v20 = 0;
        goto LABEL_22;
      }
    }

    v25 = 0;
    v13 = [v11 serializeWithError:{&v25, v24}];
    v14 = v25;
    if (v14)
    {
      break;
    }

    v15 = [v13 bytes];
    v16 = [v13 length] + v15;
    do
    {
      if (v16 - v15 >= 255)
      {
        v17 = 255;
      }

      else
      {
        v17 = v16 - v15;
      }

      v18 = TLV8BufferAppend();
      if (v18)
      {
        v21 = v18;

        goto LABEL_19;
      }

      v15 += v17;
    }

    while (v15 < v16);

    v9 = 0;
    if (++v10 != v7)
    {
      goto LABEL_4;
    }

    v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v9 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v20 = v14;

  if (!v24)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v23 = v20;
  v19 = 0;
  *v24 = v20;
LABEL_23:
  TLV8BufferFree();

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPDataStreamTransportSupportedConfiguration allocWithZone:a3];
  v5 = [(HAPDataStreamTransportSupportedConfiguration *)self configurations];
  v6 = [(HAPDataStreamTransportSupportedConfiguration *)v4 initWithConfigurations:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPDataStreamTransportSupportedConfiguration *)self configurations];
      v7 = [(HAPDataStreamTransportSupportedConfiguration *)v5 configurations];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HAPDataStreamTransportSupportedConfiguration *)self configurations];
        v9 = [(HAPDataStreamTransportSupportedConfiguration *)v5 configurations];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)description
{
  v2 = [(HAPDataStreamTransportSupportedConfiguration *)self configurations];
  v3 = [NSString stringWithFormat:@"<HAPDataStreamTransportSupportedConfiguration configurations=%@>", v2];

  return v3;
}

@end