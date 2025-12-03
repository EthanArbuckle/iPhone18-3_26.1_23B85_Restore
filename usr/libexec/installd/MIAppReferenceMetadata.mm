@interface MIAppReferenceMetadata
+ (id)referenceMetadataFromURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (MIAppReferenceMetadata)init;
- (MIAppReferenceMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIAppReferenceMetadata

- (MIAppReferenceMetadata)init
{
  v3.receiver = self;
  v3.super_class = MIAppReferenceMetadata;
  return [(MIAppReferenceMetadata *)&v3 init];
}

- (MIAppReferenceMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIAppReferenceMetadata *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"personas"];
    personas = v5->_personas;
    v5->_personas = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personas = [(MIAppReferenceMetadata *)self personas];
  [coderCopy encodeObject:personas forKey:@"personas"];
}

- (unint64_t)hash
{
  personas = [(MIAppReferenceMetadata *)self personas];
  v3 = [personas hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      personas = [(MIAppReferenceMetadata *)self personas];
      personas2 = [(MIAppReferenceMetadata *)v5 personas];

      v8 = sub_100011064(personas, personas2);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v7 encodedData];

  v18 = 0;
  v9 = [encodedData writeToURL:lCopy options:268435457 error:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v12 = MIInstallerErrorDomain;
    path = [lCopy path];
    v15 = sub_100010734("[MIAppReferenceMetadata serializeToURL:error:]", 96, v12, 4, v10, 0, @"Failed to write serialized MIAppReferences to %@", v14, path);

    v10 = v15;
    if (error)
    {
      v16 = v15;
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)referenceMetadataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v29 = 0;
  v6 = [NSData dataWithContentsOfURL:lCopy options:3 error:&v29];
  v7 = v29;
  v8 = v7;
  if (!v6)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v8 code];

      if (code == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v22 = MIInstallerErrorDomain;
    path = [lCopy path];
    v10 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 119, v22, 130, v8, 0, @"Failed to read reference metadata from %@", v24, path);

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
      error = [v9 error];
      path2 = [lCopy path];
      v16 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 132, v12, 130, error, 0, @"Failed to decode reference metadata from %@", v15, path2);

      v10 = v16;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = MIInstallerErrorDomain;
  path3 = [lCopy path];
  v8 = sub_100010734("+[MIAppReferenceMetadata referenceMetadataFromURL:error:]", 126, v19, 130, v10, 0, @"Failed to read reference metadata from %@", v21, path3);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v25 = v8;
    *error = v8;
  }

LABEL_17:
  v26 = v11;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  personas = [(MIAppReferenceMetadata *)self personas];
  v7 = [personas copyWithZone:zone];
  [v5 setPersonas:v7];

  return v5;
}

@end