@interface MIAppReferenceMetadata
+ (id)referenceMetadataFromURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (MIAppReferenceMetadata)init;
- (MIAppReferenceMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIAppReferenceMetadata

- (MIAppReferenceMetadata)init
{
  v3.receiver = self;
  v3.super_class = MIAppReferenceMetadata;
  return [(MIAppReferenceMetadata *)&v3 init];
}

- (MIAppReferenceMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIAppReferenceMetadata *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"personas"];
    personas = v5->_personas;
    v5->_personas = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIAppReferenceMetadata *)self personas];
  [v4 encodeObject:v5 forKey:@"personas"];
}

- (unint64_t)hash
{
  v2 = [(MIAppReferenceMetadata *)self personas];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIAppReferenceMetadata *)self personas];
      v7 = [(MIAppReferenceMetadata *)v5 personas];

      v8 = sub_100011064(v6, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  v8 = [v7 encodedData];

  v18 = 0;
  v9 = [v8 writeToURL:v6 options:268435457 error:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v12 = MIInstallerErrorDomain;
    v13 = [v6 path];
    v15 = sub_100010734("[MIAppReferenceMetadata serializeToURL:error:]", 96, v12, 4, v10, 0, @"Failed to write serialized MIAppReferences to %@", v14, v13);

    v10 = v15;
    if (a4)
    {
      v16 = v15;
      v11 = 0;
      *a4 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)referenceMetadataFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v29 = 0;
  v6 = [NSData dataWithContentsOfURL:v5 options:3 error:&v29];
  v7 = v29;
  v8 = v7;
  if (!v6)
  {
    v17 = [v7 domain];
    if ([v17 isEqualToString:NSCocoaErrorDomain])
    {
      v18 = [v8 code];

      if (v18 == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v22 = MIInstallerErrorDomain;
    v23 = [v5 path];
    v10 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 119, v22, 130, v8, 0, @"Failed to read reference metadata from %@", v24, v23);

    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v28 = v7;
  v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v28];
  v10 = v28;

  if (v9)
  {
    v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    if (!v11)
    {
      v12 = MIInstallerErrorDomain;
      v13 = [v9 error];
      v14 = [v5 path];
      v16 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 132, v12, 130, v13, 0, @"Failed to decode reference metadata from %@", v15, v14);

      v10 = v16;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = MIInstallerErrorDomain;
  v20 = [v5 path];
  v8 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 126, v19, 130, v10, 0, @"Failed to read reference metadata from %@", v21, v20);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v25 = v8;
    *a4 = v8;
  }

LABEL_17:
  v26 = v11;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIAppReferenceMetadata *)self personas];
  v7 = [v6 copyWithZone:a3];
  [v5 setPersonas:v7];

  return v5;
}

@end