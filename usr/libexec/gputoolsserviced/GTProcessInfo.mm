@interface GTProcessInfo
- (GTProcessInfo)init;
- (GTProcessInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTProcessInfo

- (GTProcessInfo)init
{
  v14.receiver = self;
  v14.super_class = GTProcessInfo;
  v2 = [(GTProcessInfo *)&v14 init];
  if (v2)
  {
    v3 = +[NSProcessInfo processInfo];
    processName = [v3 processName];
    processName = v2->_processName;
    v2->_processName = processName;

    environment = [v3 environment];
    environment = v2->_environment;
    v2->_environment = environment;

    arguments = [v3 arguments];
    arguments = v2->_arguments;
    v2->_arguments = arguments;

    v2->_processIdentifier = [v3 processIdentifier];
    v2->_ppid = getppid();
    v10 = +[NSBundle mainBundle];
    bundleIdentifier = [v10 bundleIdentifier];
    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = bundleIdentifier;
  }

  return v2;
}

- (GTProcessInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = GTProcessInfo;
  v5 = [(GTProcessInfo *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v6;

    if (v5->_processName)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v5->_processName;
        v5->_processName = 0;
      }
    }

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v9;

    if (v5->_arguments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v11 = v5->_arguments;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v40;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v40 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v39 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = v5->_arguments;
                v5->_arguments = 0;

                goto LABEL_18;
              }
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v11 = v5->_arguments;
        v5->_arguments = 0;
      }

LABEL_18:
    }

    v18 = objc_opt_class();
    v19 = [coderCopy decodeDictionaryWithKeysOfClass:v18 objectsOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v19;

    if (v5->_environment)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = v5->_environment;
        v22 = [(NSDictionary *)v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          while (2)
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v35 + 1) + 8 * j);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v28 = v5->_environment;
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_33;
              }

              v29 = [(NSDictionary *)v28 objectForKeyedSubscript:v26, v35];
              objc_opt_class();
              v30 = objc_opt_isKindOfClass();

              if ((v30 & 1) == 0)
              {
                v28 = v5->_environment;
LABEL_33:
                v5->_environment = 0;

                goto LABEL_34;
              }
            }

            v23 = [(NSDictionary *)v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v21 = v5->_environment;
        v5->_environment = 0;
      }

LABEL_34:
    }

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v31;

    if (v5->_bundleIdentifier)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = v5->_bundleIdentifier;
        v5->_bundleIdentifier = 0;
      }
    }

    v5->_processIdentifier = [coderCopy decodeInt32ForKey:{@"processIdentifier", v35}];
    v5->_ppid = [coderCopy decodeInt32ForKey:@"ppid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  coderCopy = coder;
  [coderCopy encodeObject:processName forKey:@"processName"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeInt32:self->_processIdentifier forKey:@"processIdentifier"];
  [coderCopy encodeInt32:self->_ppid forKey:@"ppid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTProcessInfo);
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  v5 = [[NSArray alloc] initWithArray:self->_arguments copyItems:1];
  [(GTProcessInfo *)v4 setArguments:v5];

  v6 = [[NSDictionary alloc] initWithDictionary:self->_environment copyItems:1];
  [(GTProcessInfo *)v4 setEnvironment:v6];

  [(GTProcessInfo *)v4 setBundleIdentifier:self->_bundleIdentifier];
  [(GTProcessInfo *)v4 setProcessIdentifier:self->_processIdentifier];
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: processName=%@ arguments=%@ environment=%@ bundleIdentifier=%@ processIdentifier=%d ppid=%d>", v4, self->_processName, self->_arguments, self->_environment, self->_bundleIdentifier, self->_processIdentifier, self->_ppid];

  return v5;
}

@end