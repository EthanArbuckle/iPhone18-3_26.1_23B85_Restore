@interface FMDDigestSanitizer
+ (id)_digestObject:(id)object withExclusionKeys:(id)keys;
+ (id)_sanitizeArray:(id)array withExclusionKeys:(id)keys;
+ (id)_sanitizeDictionary:(id)dictionary withExclusionKeys:(id)keys;
@end

@implementation FMDDigestSanitizer

+ (id)_digestObject:(id)object withExclusionKeys:(id)keys
{
  objectCopy = object;
  keysCopy = keys;
  v8 = keysCopy;
  if (!objectCopy)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!keysCopy || ![keysCopy count])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [self _sanitizeArray:objectCopy withExclusionKeys:v8];
      goto LABEL_10;
    }

LABEL_9:
    v9 = objectCopy;
    goto LABEL_10;
  }

  v9 = [self _sanitizeDictionary:objectCopy withExclusionKeys:v8];
LABEL_10:
  v10 = v9;
LABEL_11:

  return v10;
}

+ (id)_sanitizeDictionary:(id)dictionary withExclusionKeys:(id)keys
{
  keysCopy = keys;
  dictionaryCopy = dictionary;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100151BD0;
  v12[3] = &unk_1002CE4E8;
  v14 = objc_opt_new();
  selfCopy = self;
  v13 = keysCopy;
  v8 = v14;
  v9 = keysCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

+ (id)_sanitizeArray:(id)array withExclusionKeys:(id)keys
{
  keysCopy = keys;
  arrayCopy = array;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100151D64;
  v12[3] = &unk_1002CE510;
  v14 = objc_opt_new();
  selfCopy = self;
  v13 = keysCopy;
  v8 = v14;
  v9 = keysCopy;
  [arrayCopy enumerateObjectsUsingBlock:v12];

  v10 = [v8 copy];

  return v10;
}

@end