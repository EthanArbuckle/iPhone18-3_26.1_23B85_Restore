@interface TRIPBValue
+ (id)mlr_listValueWithNSArray:(id)array;
+ (id)mlr_valueWithNullValue;
+ (id)mlr_valueWithObject:(id)object;
@end

@implementation TRIPBValue

+ (id)mlr_listValueWithNSArray:(id)array
{
  arrayCopy = array;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        valuesArray = [v4 valuesArray];
        v12 = [TRIPBValue mlr_valueWithObject:v10];
        [valuesArray addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)mlr_valueWithObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setStringValue:objectCopy];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy doubleValue];
    [v5 setNumberValue:?];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [TRIPBStruct mlr_structWithDictionary:objectCopy];
    [v5 setStructValue:v6];
LABEL_9:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self mlr_listValueWithNSArray:objectCopy];
    [v5 setListValue:v6];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    nSLocalizedDescriptionKey = [NSString stringWithFormat:@"obj=%@", objectCopy, NSLocalizedDescriptionKey];
    v14 = nSLocalizedDescriptionKey;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unexpected type in obj" userInfo:v10];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v7 = objectCopy;

  v5 = v7;
LABEL_12:

  return v5;
}

+ (id)mlr_valueWithNullValue
{
  v2 = objc_opt_new();
  [v2 setNullValue:0];

  return v2;
}

@end