@interface TLSExtension
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)data;
@end

@implementation TLSExtension

- (id)data
{
  v3 = +[NSMutableData data];
  if ([(TLSMessageClass *)self encodeByte:[(TLSExtension *)self extensionType] buffer:v3]&& ([(TLSExtension *)self extensionData], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(TLSMessageClass *)self encodeByteArray:v4 minLength:0 maxLength:0xFFFFLL buffer:v3], v4, v5))
  {
    v6 = [NSData dataWithData:v3];
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
  bytes = [dataCopy bytes];
  bytes2 = [dataCopy bytes];
  v7 = [dataCopy length];
  v8 = objc_alloc_init(TLSExtension);
  v15 = 0;
  v9 = [(TLSMessageClass *)v8 parseByte:bytes end:&v7[bytes2] result:&v15];
  if (v9)
  {
    v10 = v9;
    [(TLSExtension *)v8 setExtensionType:v15];
    v14 = 0;
    v11 = [(TLSMessageClass *)v8 parseByteArray:v10 end:&v7[bytes2] minLength:0 maxLength:0xFFFFLL result:&v14];
    v12 = v14;
    if (v11)
    {
      [(TLSExtension *)v8 setExtensionData:v12];
      -[TLSExtension setParsedLength:](v8, "setParsedLength:", v11 - [dataCopy bytes]);
      v11 = v8;
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
      data = [(TLSExtension *)self data];
      data2 = [(TLSExtension *)v5 data];

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