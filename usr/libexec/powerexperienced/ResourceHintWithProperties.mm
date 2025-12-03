@interface ResourceHintWithProperties
- (ResourceHintWithProperties)initWithProperties:(id)properties;
- (ResourceHintWithProperties)initWithResourceHint:(id)hint andPid:(id)pid;
@end

@implementation ResourceHintWithProperties

- (ResourceHintWithProperties)initWithResourceHint:(id)hint andPid:(id)pid
{
  pidCopy = pid;
  hintCopy = hint;
  v8 = objc_alloc_init(ResourceHintWithProperties);
  -[ResourceHintWithProperties setState:](v8, "setState:", [hintCopy state]);
  uuid = [hintCopy uuid];
  [(ResourceHintWithProperties *)v8 setUuid:uuid];

  resourceType = [hintCopy resourceType];
  [(ResourceHintWithProperties *)v8 setResourceType:resourceType];
  [(ResourceHintWithProperties *)v8 setPid:pidCopy];

  return v8;
}

- (ResourceHintWithProperties)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_alloc_init(ResourceHintWithProperties);
  if (propertiesCopy)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"uuid"];
    v7 = [propertiesCopy objectForKeyedSubscript:@"type"];
    v8 = [propertiesCopy objectForKeyedSubscript:@"state"];
    v9 = [propertiesCopy objectForKeyedSubscript:@"pid"];
    v10 = v9;
    if (!v6 || !v7 || !v8 || !v9)
    {

      v12 = 0;
      goto LABEL_9;
    }

    v11 = [[NSUUID alloc] initWithUUIDString:v6];
    [(ResourceHintWithProperties *)v5 setUuid:v11];

    -[ResourceHintWithProperties setResourceType:](v5, "setResourceType:", [v7 unsignedIntValue]);
    [(ResourceHintWithProperties *)v5 setPid:v10];
    -[ResourceHintWithProperties setState:](v5, "setState:", [v8 unsignedIntValue]);
  }

  v12 = v5;
LABEL_9:

  return v12;
}

@end