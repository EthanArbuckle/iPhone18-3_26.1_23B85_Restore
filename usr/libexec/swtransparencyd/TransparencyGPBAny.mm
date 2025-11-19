@interface TransparencyGPBAny
+ (TransparencyGPBAny)anyWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5;
+ (id)descriptor;
- (BOOL)packWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5;
- (TransparencyGPBAny)initWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5;
- (id)unpackMessageClass:(Class)a3 error:(id *)a4;
@end

@implementation TransparencyGPBAny

+ (TransparencyGPBAny)anyWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5
{
  v5 = [[a1 alloc] initWithMessage:a3 typeURLPrefix:a4 error:a5];

  return v5;
}

- (TransparencyGPBAny)initWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5
{
  v8 = [(TransparencyGPBMessage *)self init];
  v9 = v8;
  if (v8 && ![(TransparencyGPBAny *)v8 packWithMessage:a3 typeURLPrefix:a4 error:a5])
  {

    return 0;
  }

  return v9;
}

- (BOOL)packWithMessage:(id)a3 typeURLPrefix:(id)a4 error:(id *)a5
{
  v9 = [objc_msgSend(a3 "descriptor")];
  v10 = [(NSString *)v9 length];
  if (v10)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if ([a4 length])
    {
      if ([a4 hasSuffix:@"/"])
      {
        v11 = [a4 stringByAppendingString:v9];
      }

      else
      {
        v11 = [NSString stringWithFormat:@"%@/%@", a4, v9];
      }

      v9 = v11;
    }

    [(TransparencyGPBAny *)self setTypeURL:v9];
    -[TransparencyGPBAny setValue:](self, "setValue:", [a3 data]);
  }

  else if (a5)
  {
    *a5 = [NSError errorWithDomain:@"TransparencyGPBWellKnownTypesErrorDomain" code:-100 userInfo:0];
  }

  return v10 != 0;
}

- (id)unpackMessageClass:(Class)a3 error:(id *)a4
{
  v7 = [-[objc_class descriptor](a3 "descriptor")];
  if (![v7 length])
  {
    if (a4)
    {
      v15 = -100;
      goto LABEL_13;
    }

    return 0;
  }

  v8 = [(TransparencyGPBAny *)self typeURL];
  v9 = [v8 rangeOfString:@"/" options:4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v9, &v9[v10] == [v8 length]) || (v12 = objc_msgSend(v8, "substringFromIndex:", v11 + 1)) == 0 || (objc_msgSend(v12, "isEqual:", v7) & 1) == 0)
  {
    if (a4)
    {
      v15 = -101;
LABEL_13:
      *a4 = [NSError errorWithDomain:@"TransparencyGPBWellKnownTypesErrorDomain" code:v15 userInfo:0];
      return 0;
    }

    return 0;
  }

  v13 = [(TransparencyGPBAny *)self value];

  return [(objc_class *)a3 parseFromData:v13 error:a4];
}

+ (id)descriptor
{
  v2 = qword_10015D108;
  if (!qword_10015D108)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBAny messageName:@"Any" fileDescription:off_100155CC0 fields:&off_100155C80 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100108970];
    qword_10015D108 = v2;
  }

  return v2;
}

@end