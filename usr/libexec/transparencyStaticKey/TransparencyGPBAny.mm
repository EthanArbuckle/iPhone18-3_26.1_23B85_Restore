@interface TransparencyGPBAny
+ (TransparencyGPBAny)anyWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error;
+ (id)descriptor;
- (BOOL)packWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error;
- (TransparencyGPBAny)initWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error;
- (id)unpackMessageClass:(Class)class error:(id *)error;
@end

@implementation TransparencyGPBAny

+ (id)descriptor
{
  v2 = qword_1000AED70;
  if (!qword_1000AED70)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBAny messageName:@"Any" fileDescription:off_1000ADCA0 fields:&off_1000ADC60 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_10008C0C8];
    qword_1000AED70 = v2;
  }

  return v2;
}

+ (TransparencyGPBAny)anyWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error
{
  v5 = [[self alloc] initWithMessage:message typeURLPrefix:prefix error:error];

  return v5;
}

- (TransparencyGPBAny)initWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error
{
  v8 = [(TransparencyGPBMessage *)self init];
  v9 = v8;
  if (v8 && ![(TransparencyGPBAny *)v8 packWithMessage:message typeURLPrefix:prefix error:error])
  {

    return 0;
  }

  return v9;
}

- (BOOL)packWithMessage:(id)message typeURLPrefix:(id)prefix error:(id *)error
{
  v9 = [objc_msgSend(message "descriptor")];
  v10 = [(NSString *)v9 length];
  if (v10)
  {
    if (error)
    {
      *error = 0;
    }

    if ([prefix length])
    {
      if ([prefix hasSuffix:@"/"])
      {
        v11 = [prefix stringByAppendingString:v9];
      }

      else
      {
        v11 = [NSString stringWithFormat:@"%@/%@", prefix, v9];
      }

      v9 = v11;
    }

    [(TransparencyGPBAny *)self setTypeURL:v9];
    -[TransparencyGPBAny setValue:](self, "setValue:", [message data]);
  }

  else if (error)
  {
    *error = [NSError errorWithDomain:@"TransparencyGPBWellKnownTypesErrorDomain" code:-100 userInfo:0];
  }

  return v10 != 0;
}

- (id)unpackMessageClass:(Class)class error:(id *)error
{
  v7 = [-[objc_class descriptor](class "descriptor")];
  if (![v7 length])
  {
    if (error)
    {
      v14 = -100;
      goto LABEL_13;
    }

    return 0;
  }

  typeURL = [(TransparencyGPBAny *)self typeURL];
  v9 = [typeURL rangeOfString:@"/" options:4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v9, &v9[v10] == [typeURL length]) || (v12 = objc_msgSend(typeURL, "substringFromIndex:", v11 + 1)) == 0 || (objc_msgSend(v12, "isEqual:", v7) & 1) == 0)
  {
    if (error)
    {
      v14 = -101;
LABEL_13:
      *error = [NSError errorWithDomain:@"TransparencyGPBWellKnownTypesErrorDomain" code:v14 userInfo:0];
      return 0;
    }

    return 0;
  }

  value = [(TransparencyGPBAny *)self value];

  return [(objc_class *)class parseFromData:value error:error];
}

@end