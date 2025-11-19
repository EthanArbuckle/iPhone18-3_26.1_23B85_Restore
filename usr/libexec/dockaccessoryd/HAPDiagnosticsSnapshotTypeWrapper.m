@interface HAPDiagnosticsSnapshotTypeWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDiagnosticsSnapshotTypeWrapper)init;
- (HAPDiagnosticsSnapshotTypeWrapper)initWithValue:(unint64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDiagnosticsSnapshotTypeWrapper

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDiagnosticsSnapshotTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDiagnosticsSnapshotTypeWrapper *)v6 parseFromData:v5 error:&v11];
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

- (HAPDiagnosticsSnapshotTypeWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPDiagnosticsSnapshotTypeWrapper;
  result = [(HAPDiagnosticsSnapshotTypeWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

- (HAPDiagnosticsSnapshotTypeWrapper)initWithValue:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAPDiagnosticsSnapshotTypeWrapper;
  result = [(HAPDiagnosticsSnapshotTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
    if (![v6 length])
    {
      v8 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];
      v9 = 0;
LABEL_8:
      *a4 = v8;
      goto LABEL_11;
    }
  }

  else if (![v6 length])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v12 = 0;
  v10 = sub_100021790([v7 bytes], objc_msgSend(v7, "length"), &v12);
  v9 = v12 == 0;
  if (!v12)
  {
    [(HAPDiagnosticsSnapshotTypeWrapper *)self setValue:v10];
    goto LABEL_11;
  }

  if (a4)
  {
    v8 = sub_100041618(v12);
    goto LABEL_8;
  }

LABEL_11:

  return v9;
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HAPDiagnosticsSnapshotTypeWrapper *)self value];

  return sub_100021858(v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPDiagnosticsSnapshotTypeWrapper allocWithZone:a3];
  v5 = [(HAPDiagnosticsSnapshotTypeWrapper *)self value];

  return [(HAPDiagnosticsSnapshotTypeWrapper *)v4 initWithValue:v5];
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
      v6 = [(HAPDiagnosticsSnapshotTypeWrapper *)self value];
      v7 = [(HAPDiagnosticsSnapshotTypeWrapper *)v5 value];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v2 = HAPDiagnosticsSnapshotTypeAsString([(HAPDiagnosticsSnapshotTypeWrapper *)self value]);
  v3 = [NSString stringWithFormat:@"<HAPDiagnosticsSnapshotTypeWrapper value=%@>", v2];

  return v3;
}

@end