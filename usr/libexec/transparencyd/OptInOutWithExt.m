@interface OptInOutWithExt
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (OptInOutWithExt)init;
- (OptInOutWithExt)initWithMutation:(id)a3;
- (id)data;
- (id)debugDescription;
- (id)description;
@end

@implementation OptInOutWithExt

- (OptInOutWithExt)initWithMutation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OptInOutWithExt;
  v5 = [(OptInOut *)&v8 init];
  if (v5)
  {
    -[OptInOut setOptIn:](v5, "setOptIn:", [v4 optIn]);
    -[OptInOut setTimestampMs:](v5, "setTimestampMs:", [v4 timestampMs]);
    v6 = [v4 extensions];
    [(OptInOutWithExt *)v5 setExtensions:v6];
  }

  return v5;
}

- (OptInOutWithExt)init
{
  v5.receiver = self;
  v5.super_class = OptInOutWithExt;
  v2 = [(OptInOut *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(OptInOutWithExt *)v2 setExtensions:v3];
  }

  return v2;
}

- (id)data
{
  v2 = self;
  v8.receiver = self;
  v8.super_class = OptInOutWithExt;
  v3 = [(OptInOut *)&v8 data];
  v4 = [v3 mutableCopy];

  v5 = [(OptInOutWithExt *)v2 extensions];
  LODWORD(v2) = [(TLSMessageClass *)v2 encodeExtensions:v5 buffer:v4];

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___OptInOutWithExt;
  v7 = objc_msgSendSuper2(&v20, "parseFromData:error:", v6, a4);
  if (v7)
  {
    v19 = 0;
    v8 = [v7 parseExtensions:objc_msgSend(v7 end:"parsedLength") + objc_msgSend(v6 result:{"bytes"), objc_msgSend(v6, "length") + objc_msgSend(v6, "bytes"), &v19}];
    v9 = v19;
    if (v8)
    {
      v10 = [NSMutableArray arrayWithArray:v9];
      [v7 setExtensions:v10];

      v11 = [v6 bytes];
      [v7 setParsedLength:v8 - v11];
      v12 = v7;
      goto LABEL_8;
    }

    v13 = kTransparencyErrorDecode;
    v21 = @"data";
    v14 = [v6 kt_hexString];
    v22 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [TransparencyError errorWithDomain:v13 code:-248 underlyingError:0 userinfo:v15 description:@"failed to parse extensions from OptInOut"];

    if (a4)
    {
      v17 = v16;
      *a4 = v16;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
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
      v6 = [(OptInOutWithExt *)self data];
      v7 = [(OptInOutWithExt *)v5 data];

      v8 = [v6 isEqualToData:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end