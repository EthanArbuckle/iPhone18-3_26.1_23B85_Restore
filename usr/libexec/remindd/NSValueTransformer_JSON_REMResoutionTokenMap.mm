@interface NSValueTransformer_JSON_REMResoutionTokenMap
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation NSValueTransformer_JSON_REMResoutionTokenMap

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_toJSONString = [valueCopy objc_toJSONString];
    v5 = objc_toJSONString;
    if (objc_toJSONString)
    {
      v6 = [objc_toJSONString dataUsingEncoding:4];
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

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = valueCopy;
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