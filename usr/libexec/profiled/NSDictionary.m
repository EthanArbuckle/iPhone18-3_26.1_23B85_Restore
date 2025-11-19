@interface NSDictionary
+ (id)MCDictionaryFromFile:(id)a3;
+ (id)MCShortenedArray:(id)a3;
+ (id)MCShortenedData:(id)a3;
+ (id)MCShortenedDictionary:(id)a3;
+ (id)MCShortenedObject:(id)a3;
- (BOOL)MCValidateBoolRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5;
- (BOOL)MCValidateIntersectionRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5;
- (BOOL)MCValidateRestrictions;
- (BOOL)MCValidateUnionRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5;
- (BOOL)MCValidateValueRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5;
- (BOOL)MCWriteToBinaryFile:(id)a3;
- (BOOL)MCWriteToBinaryFile:(id)a3 atomically:(BOOL)a4;
- (id)MCDictionaryAdditiveDeltaToCreateDictionary:(id)a3;
- (id)MCDictionarySubtractiveDeltaToCreateDictionary:(id)a3;
- (id)MCDictionaryWithLeafValuesSetToValue:(id)a3;
- (id)MCInsertedKeysFromDictionary:(id)a3 withNewLeafValue:(id)a4;
- (id)MCMutableDeepCopyWithZone:(_NSZone *)a3;
- (id)MCRemovedKeysFromDictionary:(id)a3;
- (id)MCRetainOptionalNonZeroLengthStringKey:(id)a3 errorDomain:(id)a4 invalidDataCode:(int64_t)a5 invalidDataErrorString:(id)a6 outError:(id *)a7;
- (id)MCRetainOptionalObjectKey:(id)a3 type:(Class)a4 errorDomain:(id)a5 invalidDataCode:(int64_t)a6 invalidDataErrorString:(id)a7 outError:(id *)a8;
- (id)MCRetainRequiredNonZeroLengthStringKey:(id)a3 errorDomain:(id)a4 missingDataCode:(int64_t)a5 missingDataErrorString:(id)a6 invalidDataCode:(int64_t)a7 invalidDataErrorString:(id)a8 outError:(id *)a9;
- (id)MCRetainRequiredObjectKey:(id)a3 type:(Class)a4 errorDomain:(id)a5 missingDataCode:(int64_t)a6 missingDataErrorString:(id)a7 invalidDataCode:(int64_t)a8 invalidDataErrorString:(id)a9 outError:(id *)a10;
- (id)MCShortenedPlistDescription;
@end

@implementation NSDictionary

- (BOOL)MCWriteToBinaryFile:(id)a3
{
  v4 = a3;
  v5 = [[MCDictionaryWriter alloc] initWithDictionary:self path:v4];

  v6 = [v5 write];
  return v6;
}

- (BOOL)MCWriteToBinaryFile:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v17 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:&v17];
  v9 = v17;
  if (v8)
  {
    v16 = 0;
    v10 = [v8 writeToFile:v6 options:v4 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not serialize data for %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  v14 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not write data to path %{public}@: %{public}@", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v7);
  return v12;
}

+ (id)MCDictionaryFromFile:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:v3];
  v9 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to make dictionary from file at path: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (id)MCMutableDeepCopyWithZone:(_NSZone *)a3
{
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(NSDictionary *)self keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = v10;
        if ([v10 conformsToProtocol:&OBJC_PROTOCOL___NSMutableCopying])
        {
          v11 = [v10 mutableCopyWithZone:a3];
        }

        v12 = [(NSDictionary *)self objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCMutableDeepCopyWithZone:a3];
LABEL_13:
          v14 = v13;
          [v5 setObject:v13 forKey:v11];

          goto LABEL_14;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [v12 conformsToProtocol:&OBJC_PROTOCOL___NSMutableCopying])
        {
          v13 = [v12 mutableCopyWithZone:a3];
          goto LABEL_13;
        }

        if ([v12 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
        {
          v13 = [v12 copyWithZone:a3];
          goto LABEL_13;
        }

        [v5 setObject:v12 forKey:v11];
LABEL_14:

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v15;
    }

    while (v15);
  }

  return v5;
}

- (id)MCRetainRequiredObjectKey:(id)a3 type:(Class)a4 errorDomain:(id)a5 missingDataCode:(int64_t)a6 missingDataErrorString:(id)a7 invalidDataCode:(int64_t)a8 invalidDataErrorString:(id)a9 outError:(id *)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = [(NSDictionary *)self objectForKey:v15];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      goto LABEL_10;
    }

    if (a10)
    {
      v26 = v15;
      v21 = MCErrorArray();
      v22 = MCErrorTypeFatal;
      v23 = v16;
      v24 = a8;
      goto LABEL_8;
    }
  }

  else if (a10)
  {
    v26 = v15;
    v21 = MCErrorArray();
    v22 = MCErrorTypeFatal;
    v23 = v16;
    v24 = a6;
LABEL_8:
    *a10 = [NSError MCErrorWithDomain:v23 code:v24 descriptionArray:v21 errorType:v22, v26, 0];
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (id)MCRetainOptionalObjectKey:(id)a3 type:(Class)a4 errorDomain:(id)a5 invalidDataCode:(int64_t)a6 invalidDataErrorString:(id)a7 outError:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = [(NSDictionary *)self objectForKey:v13];
  if (v16 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      v17 = MCErrorArray();
      *a8 = [NSError MCErrorWithDomain:v14 code:a6 descriptionArray:v17 errorType:MCErrorTypeFatal, v13, 0];

      a8 = 0;
    }
  }

  else
  {
    a8 = v16;
  }

  return a8;
}

- (id)MCRetainRequiredNonZeroLengthStringKey:(id)a3 errorDomain:(id)a4 missingDataCode:(int64_t)a5 missingDataErrorString:(id)a6 invalidDataCode:(int64_t)a7 invalidDataErrorString:(id)a8 outError:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = [(NSDictionary *)self objectForKey:v15];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a9)
    {
      v26 = v15;
      v21 = MCErrorArray();
      v22 = MCErrorTypeFatal;
      v23 = v16;
      v24 = a7;
LABEL_9:
      *a9 = [NSError MCErrorWithDomain:v23 code:v24 descriptionArray:v21 errorType:v22, v26, 0];
    }
  }

  else
  {
    if ([v19 length])
    {
      v20 = v19;
      goto LABEL_11;
    }

    if (a9)
    {
      v26 = v15;
      v21 = MCErrorArray();
      v22 = MCErrorTypeFatal;
      v23 = v16;
      v24 = a5;
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (id)MCRetainOptionalNonZeroLengthStringKey:(id)a3 errorDomain:(id)a4 invalidDataCode:(int64_t)a5 invalidDataErrorString:(id)a6 outError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(NSDictionary *)self objectForKey:v12];
  if (!v15)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v15 length])
    {
LABEL_4:
      a7 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a7)
    {
      goto LABEL_8;
    }

    v16 = MCErrorArray();
    *a7 = [NSError MCErrorWithDomain:v13 code:a5 descriptionArray:v16 errorType:MCErrorTypeFatal, v12, 0];
  }

  a7 = 0;
LABEL_8:

  return a7;
}

- (id)MCShortenedPlistDescription
{
  v2 = [objc_opt_class() MCShortenedDictionary:self];
  v3 = [v2 description];

  return v3;
}

+ (id)MCShortenedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 MCShortenedArray:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 MCShortenedDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [a1 MCShortenedData:v4];
      }

      else
      {
        v5 = v4;
      }
    }
  }

  v6 = v5;

  return v6;
}

+ (id)MCShortenedData:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 length] > 0x10)
    {
      v4 = [v3 subdataWithRange:{0, 8}];
      v6 = [v4 MCHexString];
      v7 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 8, 8}];
      v8 = [v7 MCHexString];
      v5 = [NSString stringWithFormat:@"0x%@ ... 0x%@", v6, v8];
    }

    else
    {
      v4 = [v3 MCHexString];
      v5 = [NSString stringWithFormat:@"0x%@", v4];
    }
  }

  else
  {
    v5 = @"<empty>";
  }

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Data { length = %lu, bytes = %@ }", [v3 length], v5);

  return v9;
}

+ (id)MCShortenedArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 MCShortenedObject:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)MCShortenedDictionary:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001354C;
  v5 = v7[3] = &unk_10011BE90;
  v8 = v5;
  v9 = a1;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (BOOL)MCValidateRestrictions
{
  v3 = +[MCRestrictionManager sharedManager];
  v4 = [v3 defaultRestrictions];

  [(NSDictionary *)self objectForKeyedSubscript:MCRestrictedBoolKey];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v42 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![(NSDictionary *)self MCValidateBoolRestriction:*(*(&v39 + 1) + 8 * i) inRestrictions:v5 defaultRestrictions:v4])
        {
          v25 = 0;
          v10 = v5;
          goto LABEL_41;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSDictionary *)self objectForKeyedSubscript:MCRestrictedValueKey];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v38 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    while (2)
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![(NSDictionary *)self MCValidateValueRestriction:*(*(&v35 + 1) + 8 * j) inRestrictions:v10 defaultRestrictions:v4])
        {
          v25 = 0;
          v15 = v10;
          goto LABEL_40;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [(NSDictionary *)self objectForKeyedSubscript:MCIntersectionKey];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v34 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    while (2)
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (![(NSDictionary *)self MCValidateIntersectionRestriction:*(*(&v31 + 1) + 8 * k) inRestrictions:v15 defaultRestrictions:v4])
        {
          v25 = 0;
          v20 = v15;
          goto LABEL_39;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [(NSDictionary *)self objectForKeyedSubscript:MCUnionKey];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v30 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    while (2)
    {
      for (m = 0; m != v22; m = m + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (![(NSDictionary *)self MCValidateUnionRestriction:*(*(&v27 + 1) + 8 * m) inRestrictions:v20 defaultRestrictions:v4, v27])
        {
          v25 = 0;
          goto LABEL_38;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v43 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v25 = 1;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
  return v25;
}

- (BOOL)MCValidateBoolRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:MCRestrictedBoolKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:MCRestrictedBoolPreferenceKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:MCRestrictedBoolValueKey];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (BOOL)MCValidateValueRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:MCRestrictedValueKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:MCRestrictedValuePreferSmallerValuesKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 objectForKeyedSubscript:v7];
      v13 = [v10 objectForKeyedSubscript:MCRestrictedValueValueKey];

      objc_opt_class();
      LOBYTE(v10) = objc_opt_isKindOfClass();
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

- (BOOL)MCValidateIntersectionRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:MCIntersectionKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:MCIntersectionValuesKey];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)MCValidateUnionRestriction:(id)a3 inRestrictions:(id)a4 defaultRestrictions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:MCUnionKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:v7];
    v12 = [v11 objectForKeyedSubscript:MCUnionValuesKey];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)MCDictionaryAdditiveDeltaToCreateDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = &kSecCMSAdditionalCerts_ptr;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(NSDictionary *)self objectForKeyedSubscript:v12, v18];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (!v13)
        {
          goto LABEL_11;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if ([v14 isEqual:v13])
        {
          goto LABEL_12;
        }

        v15 = v10[89];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 MCDictionaryAdditiveDeltaToCreateDictionary:v14];
          [v5 setObject:v16 forKeyedSubscript:v12];

          v10 = &kSecCMSAdditionalCerts_ptr;
        }

        else
        {
LABEL_11:
          [v5 setObject:v14 forKeyedSubscript:v12];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCDictionarySubtractiveDeltaToCreateDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = &kSecCMSAdditionalCerts_ptr;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(NSDictionary *)v6 objectForKeyedSubscript:v12, v18];
        v14 = [v4 objectForKeyedSubscript:v12];
        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isEqual:v13] & 1) == 0)
          {
            v15 = v10[89];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v13 MCDictionarySubtractiveDeltaToCreateDictionary:v14];
              if ([v16 count])
              {
                [v5 setObject:v16 forKeyedSubscript:v12];
              }

              v10 = &kSecCMSAdditionalCerts_ptr;
            }
          }
        }

        else
        {
          [v5 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCRemovedKeysFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary dictionaryWithDictionary:self];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v10 = &kSecCMSAdditionalCerts_ptr;
    v21 = self;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [(NSDictionary *)self objectForKeyedSubscript:v12];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          v15 = v10[89];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (v16 = v10[89], objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v17 = v5;
            v18 = [NSMutableDictionary dictionaryWithDictionary:v13];
            v19 = [v18 MCRemovedKeysFromDictionary:v14];

            v5 = v17;
            if ([v19 count])
            {
              [v17 setObject:v19 forKeyedSubscript:v12];
            }

            else
            {
              [v17 removeObjectForKey:v12];
            }

            self = v21;
            v10 = &kSecCMSAdditionalCerts_ptr;
          }

          else
          {
            [v5 removeObjectForKey:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)MCInsertedKeysFromDictionary:(id)a3 withNewLeafValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = [NSMutableDictionary dictionaryWithDictionary:self];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v24 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v21 = self;
    v22 = *v26;
    v20 = v8;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(NSDictionary *)self objectForKeyedSubscript:v10];
        v12 = [v8 objectForKeyedSubscript:v10];
        v13 = v12;
        if (v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        v16 = v13;
        if (v7)
        {
          objc_opt_class();
          v16 = v7;
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 MCDictionaryWithLeafValuesSetToValue:v7];
          }
        }

        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [NSMutableDictionary dictionaryWithDictionary:v11];
          v18 = [v17 MCInsertedKeysFromDictionary:v13 withNewLeafValue:v7];

          v8 = v20;
          [v23 setObject:v18 forKeyedSubscript:v10];

          self = v21;
        }

        else
        {
          [v23 setObject:v16 forKeyedSubscript:v10];
        }
      }

      v24 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  return v23;
}

- (id)MCDictionaryWithLeafValuesSetToValue:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary dictionaryWithDictionary:self];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSDictionary *)v6 objectForKeyedSubscript:v11, v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 MCDictionaryWithLeafValuesSetToValue:v4];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

        else
        {
          [v5 setObject:v4 forKeyedSubscript:v11];
        }
      }

      v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end