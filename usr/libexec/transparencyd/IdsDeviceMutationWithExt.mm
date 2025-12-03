@interface IdsDeviceMutationWithExt
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (IdsDeviceMutationWithExt)init;
- (id)data;
@end

@implementation IdsDeviceMutationWithExt

- (IdsDeviceMutationWithExt)init
{
  v5.receiver = self;
  v5.super_class = IdsDeviceMutationWithExt;
  v2 = [(IdsDeviceMutation *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(IdsDeviceMutationWithExt *)v2 setExtensions:v3];
  }

  return v2;
}

- (id)data
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = IdsDeviceMutationWithExt;
  data = [(IdsDeviceMutation *)&v8 data];
  v4 = [data mutableCopy];

  extensions = [(IdsDeviceMutationWithExt *)selfCopy extensions];
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
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___IdsDeviceMutationWithExt;
  v7 = objc_msgSendSuper2(&v14, "parseFromData:error:", dataCopy, error);
  if (v7)
  {
    v13 = 0;
    v8 = [v7 parseExtensions:objc_msgSend(v7 end:"parsedLength") + objc_msgSend(dataCopy result:{"bytes"), objc_msgSend(dataCopy, "length") + objc_msgSend(dataCopy, "bytes"), &v13}];
    v9 = v13;
    if (v8)
    {
      v10 = [NSMutableArray arrayWithArray:v9];
      [v7 setExtensions:v10];

      [v7 setParsedLength:{v8 - objc_msgSend(dataCopy, "bytes")}];
      v11 = v7;
    }

    else if (error)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-248 description:@"failed to parse extensions from Mutation"];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
      data = [(IdsDeviceMutationWithExt *)self data];
      data2 = [(IdsDeviceMutationWithExt *)v5 data];

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