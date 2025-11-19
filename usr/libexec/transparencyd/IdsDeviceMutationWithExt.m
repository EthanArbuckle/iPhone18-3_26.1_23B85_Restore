@interface IdsDeviceMutationWithExt
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
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
  v2 = self;
  v8.receiver = self;
  v8.super_class = IdsDeviceMutationWithExt;
  v3 = [(IdsDeviceMutation *)&v8 data];
  v4 = [v3 mutableCopy];

  v5 = [(IdsDeviceMutationWithExt *)v2 extensions];
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
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___IdsDeviceMutationWithExt;
  v7 = objc_msgSendSuper2(&v14, "parseFromData:error:", v6, a4);
  if (v7)
  {
    v13 = 0;
    v8 = [v7 parseExtensions:objc_msgSend(v7 end:"parsedLength") + objc_msgSend(v6 result:{"bytes"), objc_msgSend(v6, "length") + objc_msgSend(v6, "bytes"), &v13}];
    v9 = v13;
    if (v8)
    {
      v10 = [NSMutableArray arrayWithArray:v9];
      [v7 setExtensions:v10];

      [v7 setParsedLength:{v8 - objc_msgSend(v6, "bytes")}];
      v11 = v7;
    }

    else if (a4)
    {
      [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-248 description:@"failed to parse extensions from Mutation"];
      *a4 = v11 = 0;
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
      v6 = [(IdsDeviceMutationWithExt *)self data];
      v7 = [(IdsDeviceMutationWithExt *)v5 data];

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