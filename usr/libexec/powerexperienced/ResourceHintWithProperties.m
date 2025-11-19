@interface ResourceHintWithProperties
- (ResourceHintWithProperties)initWithProperties:(id)a3;
- (ResourceHintWithProperties)initWithResourceHint:(id)a3 andPid:(id)a4;
@end

@implementation ResourceHintWithProperties

- (ResourceHintWithProperties)initWithResourceHint:(id)a3 andPid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ResourceHintWithProperties);
  -[ResourceHintWithProperties setState:](v8, "setState:", [v7 state]);
  v9 = [v7 uuid];
  [(ResourceHintWithProperties *)v8 setUuid:v9];

  v10 = [v7 resourceType];
  [(ResourceHintWithProperties *)v8 setResourceType:v10];
  [(ResourceHintWithProperties *)v8 setPid:v6];

  return v8;
}

- (ResourceHintWithProperties)initWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ResourceHintWithProperties);
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"uuid"];
    v7 = [v4 objectForKeyedSubscript:@"type"];
    v8 = [v4 objectForKeyedSubscript:@"state"];
    v9 = [v4 objectForKeyedSubscript:@"pid"];
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