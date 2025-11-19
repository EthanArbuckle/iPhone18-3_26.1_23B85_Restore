@interface HAPOperatingStateResponse
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPOperatingStateResponse)init;
- (HAPOperatingStateResponse)initWithState:(id)a3 abnormalReasons:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPOperatingStateResponse

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPOperatingStateResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPOperatingStateResponse *)v6 parseFromData:v5 error:&v11];
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

- (HAPOperatingStateResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPOperatingStateResponse;
  return [(HAPOperatingStateResponse *)&v3 init];
}

- (HAPOperatingStateResponse)initWithState:(id)a3 abnormalReasons:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPOperatingStateResponse;
  v9 = [(HAPOperatingStateResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_state, a3);
    objc_storeStrong(&v10->_abnormalReasons, a4);
  }

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_14:
    [(HAPOperatingStateResponse *)self setState:v10];
    [(HAPOperatingStateResponse *)self setAbnormalReasons:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_21;
  }

  v22 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = &v7[v8];
  while (1)
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v22)
      {
        sub_100041618(Next);
        *v22 = v18 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v23 = v11;
      v15 = &v23;
      [HAPOperatingStateAbnormalReasonsWrapper parsedFromData:v14 error:&v23];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v28 == 1)
    {
      v14 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPOperatingStateWrapper parsedFromData:v14 error:&v24];
      v10 = v16 = v10;
LABEL_9:
      v17 = *v15;

      v11 = v17;
    }

    if (v25 >= v12)
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  v19 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v22)
  {
    v20 = v11;
    v18 = 0;
    *v22 = v11;
    goto LABEL_21;
  }

LABEL_20:
  v18 = 0;
LABEL_21:

  return v18;
}

- (id)serializeWithError:(id *)a3
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  TLV8BufferInit();
  v5 = [(HAPOperatingStateResponse *)self state];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(HAPOperatingStateResponse *)self state];
  v17 = 0;
  v7 = [v6 serializeWithError:&v17];
  v8 = v17;

  if (v8)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (!v9)
  {

LABEL_5:
    v10 = [(HAPOperatingStateResponse *)self abnormalReasons];

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = [(HAPOperatingStateResponse *)self abnormalReasons];
    v16 = 0;
    v7 = [v11 serializeWithError:&v16];
    v8 = v16;

    if (v8)
    {
      goto LABEL_7;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
  }

  v12 = v9;
LABEL_10:

  if (!v8)
  {
    if (v12)
    {
      if (a3)
      {
        sub_100041618(v12);
        v8 = 0;
        *a3 = v14 = 0;
        goto LABEL_19;
      }

      v8 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = [NSData dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_19;
  }

  if (a3)
  {
    v13 = v8;
    v14 = 0;
    *a3 = v8;
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
LABEL_19:
  TLV8BufferFree();

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPOperatingStateResponse allocWithZone:a3];
  v5 = [(HAPOperatingStateResponse *)self state];
  v6 = [(HAPOperatingStateResponse *)self abnormalReasons];
  v7 = [(HAPOperatingStateResponse *)v4 initWithState:v5 abnormalReasons:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HAPOperatingStateResponse *)self state];
      v8 = [(HAPOperatingStateResponse *)v6 state];
      if (v7 != v8)
      {
        v9 = [(HAPOperatingStateResponse *)self state];
        v3 = [(HAPOperatingStateResponse *)v6 state];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPOperatingStateResponse *)self abnormalReasons];
      v12 = [(HAPOperatingStateResponse *)v6 abnormalReasons];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPOperatingStateResponse *)self abnormalReasons];
        v14 = [(HAPOperatingStateResponse *)v6 abnormalReasons];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (NSString)description
{
  v3 = [(HAPOperatingStateResponse *)self state];
  v4 = [(HAPOperatingStateResponse *)self abnormalReasons];
  v5 = [NSString stringWithFormat:@"<HAPOperatingStateResponse state=%@, abnormalReasons=%@>", v3, v4];

  return v5;
}

@end