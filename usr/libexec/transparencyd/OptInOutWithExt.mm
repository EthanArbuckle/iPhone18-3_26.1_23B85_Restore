@interface OptInOutWithExt
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (OptInOutWithExt)init;
- (OptInOutWithExt)initWithMutation:(id)mutation;
- (id)data;
- (id)debugDescription;
- (id)description;
@end

@implementation OptInOutWithExt

- (OptInOutWithExt)initWithMutation:(id)mutation
{
  mutationCopy = mutation;
  v8.receiver = self;
  v8.super_class = OptInOutWithExt;
  v5 = [(OptInOut *)&v8 init];
  if (v5)
  {
    -[OptInOut setOptIn:](v5, "setOptIn:", [mutationCopy optIn]);
    -[OptInOut setTimestampMs:](v5, "setTimestampMs:", [mutationCopy timestampMs]);
    extensions = [mutationCopy extensions];
    [(OptInOutWithExt *)v5 setExtensions:extensions];
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
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = OptInOutWithExt;
  data = [(OptInOut *)&v8 data];
  v4 = [data mutableCopy];

  extensions = [(OptInOutWithExt *)selfCopy extensions];
  LODWORD(selfCopy) = [(TLSMessageClass *)selfCopy encodeExtensions:extensions buffer:v4];

  if (selfCopy)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS___OptInOutWithExt;
  v7 = objc_msgSendSuper2(&v20, "parseFromData:error:", dataCopy, error);
  if (v7)
  {
    v19 = 0;
    v8 = [v7 parseExtensions:objc_msgSend(v7 end:"parsedLength") + objc_msgSend(dataCopy result:{"bytes"), objc_msgSend(dataCopy, "length") + objc_msgSend(dataCopy, "bytes"), &v19}];
    v9 = v19;
    if (v8)
    {
      v10 = [NSMutableArray arrayWithArray:v9];
      [v7 setExtensions:v10];

      bytes = [dataCopy bytes];
      [v7 setParsedLength:v8 - bytes];
      v12 = v7;
      goto LABEL_8;
    }

    v13 = kTransparencyErrorDecode;
    v21 = @"data";
    kt_hexString = [dataCopy kt_hexString];
    v22 = kt_hexString;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [TransparencyError errorWithDomain:v13 code:-248 underlyingError:0 userinfo:v15 description:@"failed to parse extensions from OptInOut"];

    if (error)
    {
      v17 = v16;
      *error = v16;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      data = [(OptInOutWithExt *)self data];
      data2 = [(OptInOutWithExt *)v5 data];

      v8 = [data isEqualToData:data2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end