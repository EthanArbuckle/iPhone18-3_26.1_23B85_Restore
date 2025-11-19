@interface NSValueTransformer_JSON_REMResoutionTokenMap
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation NSValueTransformer_JSON_REMResoutionTokenMap

- (id)transformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objc_toJSONString];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 dataUsingEncoding:4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
    if ([v6 length])
    {
      v7 = [[NSString alloc] initWithData:v6 encoding:4];
      if (v7)
      {
        v8 = [REMResolutionTokenMap objc_newObjectFromJSONString:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end