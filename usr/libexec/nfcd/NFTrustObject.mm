@interface NFTrustObject
+ (id)allowedXPCClasses;
- (NFTrustObject)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation NFTrustObject

+ (id)allowedXPCClasses
{
  if (qword_10035DA08 != -1)
  {
    dispatch_once(&qword_10035DA08, &stru_100319618);
  }

  v3 = qword_10035DA10;

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  Superclass = objc_opt_class();
  v5 = NSStringFromClass(Superclass);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    while (1)
    {
      outCount = 0;
      cls = Superclass;
      v9 = class_copyPropertyList(Superclass, &outCount);
      if (outCount)
      {
        break;
      }

LABEL_13:
      free(v9);
      Superclass = class_getSuperclass(cls);
      v15 = NSStringFromClass(Superclass);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 isEqualToString:v17];

      if (v18)
      {
        goto LABEL_14;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = [[NSString alloc] initWithFormat:@"%s", property_getName(v9[v10])];
      if (([v11 hasPrefix:@"trustObjectInternal"] & 1) == 0)
      {
        break;
      }

LABEL_12:

      if (++v10 >= outCount)
      {
        goto LABEL_13;
      }
    }

    v12 = [(NFTrustObject *)self valueForKey:v11];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v3 setObject:v12 forKeyedSubscript:v11];
        goto LABEL_11;
      }

      dictionaryRepresentation = [v12 dictionaryRepresentation];
    }

    else
    {
      dictionaryRepresentation = +[NSNull null];
    }

    v14 = dictionaryRepresentation;
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:v11];

LABEL_11:
    goto LABEL_12;
  }

LABEL_14:

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dictionaryRepresentation = [(NFTrustObject *)self dictionaryRepresentation];
  v7 = [v3 initWithFormat:@"%@ : %@", v5, dictionaryRepresentation];

  return v7;
}

- (NFTrustObject)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = NFTrustObject;
  return [(NFTrustObject *)&v4 init];
}

@end