@interface OptInOut
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (IdsMutation)idsMutation;
- (OptInOut)init;
- (id)data;
- (id)debugDescription;
- (id)description;
- (id)diagnosticsJsonDictionary;
@end

@implementation OptInOut

- (OptInOut)init
{
  v3.receiver = self;
  v3.super_class = OptInOut;
  return [(OptInOut *)&v3 init];
}

- (id)data
{
  v3 = +[NSMutableData data];
  if ([(TLSMessageClass *)self encodeBool:[(OptInOut *)self optIn] buffer:v3]&& [(TLSMessageClass *)self encodeUint64:[(OptInOut *)self timestampMs] buffer:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 bytes];
  v8 = [v5 length];
  v9 = objc_alloc_init(objc_opt_class());
  v20 = 0;
  v10 = [v9 parseBool:v6 end:&v8[v7] result:&v20];
  if (v10)
  {
    v11 = v10;
    [v9 setOptIn:v20];
    v19 = 0;
    v12 = [v9 parseUint64:v11 end:&v8[v7] result:&v19];
    if (v12)
    {
      v13 = v12;
      [v9 setTimestampMs:v19];
      [v9 setParsedLength:{v13 - objc_msgSend(v5, "bytes")}];
      v14 = v9;
      goto LABEL_10;
    }

    if (a4)
    {
      v15 = kTransparencyErrorDecode;
      v16 = @"failed to parse timestampMs from OptInOut";
      v17 = -275;
      goto LABEL_8;
    }
  }

  else if (a4)
  {
    v15 = kTransparencyErrorDecode;
    v16 = @"failed to parse optIn BOOLean from OptInOut";
    v17 = -274;
LABEL_8:
    [TransparencyError errorWithDomain:v15 code:v17 description:v16];
    *a4 = v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)debugDescription
{
  if ([(OptInOut *)self optIn])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  return [NSString stringWithFormat:@"{\t\toptIn:%@\n\t\ttimestampMs:%llu\n}", v3, [(OptInOut *)self timestampMs]];
}

- (id)description
{
  if ([(OptInOut *)self optIn])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  return [NSString stringWithFormat:@"optIn:%@; timestampMs:%llu", v3, [(OptInOut *)self timestampMs]];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(OptInOut *)self data];
      v7 = [(OptInOut *)v5 data];

      v8 = [v6 isEqualToData:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (IdsMutation)idsMutation
{
  WeakRetained = objc_loadWeakRetained(&self->_idsMutation);

  return WeakRetained;
}

- (id)diagnosticsJsonDictionary
{
  v10[0] = @"optIn";
  v3 = [NSNumber numberWithBool:[(OptInOut *)self optIn]];
  v11[0] = v3;
  v10[1] = @"timestamp";
  v4 = [NSDate dateWithTimeIntervalSince1970:([(OptInOut *)self timestampMs]/ 0x3E8)];
  v5 = [v4 kt_dateToString];
  v11[1] = v5;
  v10[2] = @"timestampReadable";
  v6 = [NSDate dateWithTimeIntervalSince1970:([(OptInOut *)self timestampMs]/ 0x3E8)];
  v7 = [v6 kt_toISO_8601_UTCString];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end