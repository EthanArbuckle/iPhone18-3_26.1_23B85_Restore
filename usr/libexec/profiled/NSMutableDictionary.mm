@interface NSMutableDictionary
- (void)MCDeepCopyEntriesFromDictionary:(id)dictionary;
- (void)MCDeepCopyMissingEntriesFromDictionary:(id)dictionary;
- (void)MCDeleteBoolRestriction:(id)restriction;
- (void)MCFixUpRestrictionsDictionaryForMDMReporting;
- (void)MCSanitizeRestrictions;
- (void)MCSetIntersectionRestriction:(id)restriction values:(id)values;
- (void)MCSetIntersectionSetting:(id)setting values:(id)values;
- (void)MCSetObjectIfNotNil:(id)nil forKey:(id)key;
- (void)MCSetUnionRestriction:(id)restriction values:(id)values;
- (void)MCSetUnionSetting:(id)setting values:(id)values;
- (void)MCSetValueRestriction:(id)restriction value:(id)value;
- (void)_MCFilterRestrictionPayloadKeys:(id)keys filterOut:(BOOL)out;
@end

@implementation NSMutableDictionary

- (void)MCDeepCopyEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [dictionaryCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKey:v9];
        v11 = [(NSMutableDictionary *)self objectForKey:v9];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 MCDeepCopyEntriesFromDictionary:v10];
              goto LABEL_18;
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mCMutableDeepCopy = [v10 MCMutableDeepCopy];
        }

        else
        {
          if (!v10)
          {
            goto LABEL_18;
          }

          mCMutableDeepCopy = [v10 copy];
        }

        v15 = mCMutableDeepCopy;
        [(NSMutableDictionary *)self setObject:mCMutableDeepCopy forKey:v9];

LABEL_18:
      }

      v6 = [dictionaryCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)MCDeepCopyMissingEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [dictionaryCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self objectForKey:v9];
        v11 = [dictionaryCopy objectForKey:v9];
        if (v11)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          if (v10)
          {
            goto LABEL_20;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            mCMutableDeepCopy = [v11 MCMutableDeepCopy];
          }

          else
          {
            if (!v11)
            {
              goto LABEL_20;
            }

            mCMutableDeepCopy = [v11 copy];
          }

          v15 = mCMutableDeepCopy;
          [(NSMutableDictionary *)self setObject:mCMutableDeepCopy forKey:v9];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v10 MCDeepCopyMissingEntriesFromDictionary:v11];
            }
          }
        }

LABEL_20:
      }

      v6 = [dictionaryCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)MCSetObjectIfNotNil:(id)nil forKey:(id)key
{
  if (nil)
  {
    [(NSMutableDictionary *)self setObject:nil forKey:key];
  }
}

- (void)MCDeleteBoolRestriction:(id)restriction
{
  restrictionCopy = restriction;
  v4 = MCRestrictedBoolKey;
  v5 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCRestrictedBoolKey];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    [v6 removeObjectForKey:restrictionCopy];
    if ([v6 count])
    {
      selfCopy2 = self;
      v8 = v6;
    }

    else
    {
      selfCopy2 = self;
      v8 = 0;
    }

    [(NSMutableDictionary *)selfCopy2 setObject:v8 forKeyedSubscript:v4];
  }
}

- (void)MCSetValueRestriction:(id)restriction value:(id)value
{
  restrictionCopy = restriction;
  valueCopy = value;
  if (valueCopy)
  {
    v8 = +[MCRestrictionManager sharedManager];
    defaultRestrictions = [v8 defaultRestrictions];

    v10 = MCRestrictedValueKey;
    v11 = [defaultRestrictions objectForKeyedSubscript:MCRestrictedValueKey];
    v12 = [v11 objectForKeyedSubscript:restrictionCopy];
    v13 = MCRestrictedValuePreferSmallerValuesKey;
    v14 = [v12 objectForKeyedSubscript:MCRestrictedValuePreferSmallerValuesKey];

    if (!v14)
    {
      restrictionCopy = [NSString stringWithFormat:@"%@ is not a value restriction.", restrictionCopy];
      v24 = [NSException exceptionWithName:NSInvalidArgumentException reason:restrictionCopy userInfo:0];
      v25 = v24;

      objc_exception_throw(v24);
    }

    v15 = [(NSMutableDictionary *)self objectForKeyedSubscript:v10];
    v16 = [v15 mutableCopy];

    if (!v16)
    {
      v16 = +[NSMutableDictionary dictionary];
    }

    v26[0] = v13;
    v26[1] = MCRestrictedValueValueKey;
    v27[0] = v14;
    v27[1] = valueCopy;
    v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v16 setObject:v17 forKeyedSubscript:restrictionCopy];

    [(NSMutableDictionary *)self setObject:v16 forKeyedSubscript:v10];
  }

  else
  {
    v18 = MCRestrictedValueKey;
    v19 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCRestrictedValueKey];
    v20 = [v19 mutableCopy];

    if (v20)
    {
      [v20 removeObjectForKey:restrictionCopy];
      if ([v20 count])
      {
        selfCopy2 = self;
        v22 = v20;
      }

      else
      {
        selfCopy2 = self;
        v22 = 0;
      }

      [(NSMutableDictionary *)selfCopy2 setObject:v22 forKeyedSubscript:v18];
    }
  }
}

- (void)MCSetIntersectionRestriction:(id)restriction values:(id)values
{
  restrictionCopy = restriction;
  valuesCopy = values;
  if (valuesCopy)
  {
    v8 = +[MCRestrictionManager sharedManager];
    defaultRestrictions = [v8 defaultRestrictions];

    v10 = MCIntersectionKey;
    v11 = [defaultRestrictions objectForKeyedSubscript:MCIntersectionKey];
    v12 = [v11 objectForKeyedSubscript:restrictionCopy];

    if (!v12)
    {
      restrictionCopy = [NSString stringWithFormat:@"%@ is not an intersection restriction.", restrictionCopy];
      v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:restrictionCopy userInfo:0];
      v23 = v22;

      objc_exception_throw(v22);
    }

    v13 = [(NSMutableDictionary *)self objectForKeyedSubscript:v10];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    v24 = MCIntersectionValuesKey;
    v25 = valuesCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v14 setObject:v15 forKeyedSubscript:restrictionCopy];

    [(NSMutableDictionary *)self setObject:v14 forKeyedSubscript:v10];
  }

  else
  {
    v16 = MCIntersectionKey;
    v17 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCIntersectionKey];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      [v18 removeObjectForKey:restrictionCopy];
      if ([v18 count])
      {
        selfCopy2 = self;
        v20 = v18;
      }

      else
      {
        selfCopy2 = self;
        v20 = 0;
      }

      [(NSMutableDictionary *)selfCopy2 setObject:v20 forKeyedSubscript:v16];
    }
  }
}

- (void)MCSetUnionRestriction:(id)restriction values:(id)values
{
  restrictionCopy = restriction;
  valuesCopy = values;
  if (valuesCopy)
  {
    v8 = +[MCRestrictionManager sharedManager];
    defaultRestrictions = [v8 defaultRestrictions];

    v10 = MCUnionKey;
    v11 = [defaultRestrictions objectForKeyedSubscript:MCUnionKey];
    v12 = [v11 objectForKeyedSubscript:restrictionCopy];

    if (!v12)
    {
      restrictionCopy = [NSString stringWithFormat:@"%@ is not an union restriction.", restrictionCopy];
      v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:restrictionCopy userInfo:0];
      v23 = v22;

      objc_exception_throw(v22);
    }

    v13 = [(NSMutableDictionary *)self objectForKeyedSubscript:v10];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    v24 = MCUnionValuesKey;
    v25 = valuesCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v14 setObject:v15 forKeyedSubscript:restrictionCopy];

    [(NSMutableDictionary *)self setObject:v14 forKeyedSubscript:v10];
  }

  else
  {
    v16 = MCUnionKey;
    v17 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCUnionKey];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      [v18 removeObjectForKey:restrictionCopy];
      if ([v18 count])
      {
        selfCopy2 = self;
        v20 = v18;
      }

      else
      {
        selfCopy2 = self;
        v20 = 0;
      }

      [(NSMutableDictionary *)selfCopy2 setObject:v20 forKeyedSubscript:v16];
    }
  }
}

- (void)MCSetIntersectionSetting:(id)setting values:(id)values
{
  settingCopy = setting;
  valuesCopy = values;
  if (valuesCopy)
  {
    v8 = +[MCRestrictionManager sharedManager];
    defaultSettings = [v8 defaultSettings];

    v10 = MCIntersectionKey;
    v11 = [defaultSettings objectForKeyedSubscript:MCIntersectionKey];
    v12 = [v11 objectForKeyedSubscript:settingCopy];

    if (!v12)
    {
      settingCopy = [NSString stringWithFormat:@"%@ is not an intersection setting.", settingCopy];
      v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:settingCopy userInfo:0];
      v23 = v22;

      objc_exception_throw(v22);
    }

    v13 = [(NSMutableDictionary *)self objectForKeyedSubscript:v10];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    v24 = MCIntersectionValuesKey;
    v25 = valuesCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v14 setObject:v15 forKeyedSubscript:settingCopy];

    [(NSMutableDictionary *)self setObject:v14 forKeyedSubscript:v10];
  }

  else
  {
    v16 = MCIntersectionKey;
    v17 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCIntersectionKey];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      [v18 removeObjectForKey:settingCopy];
      if ([v18 count])
      {
        selfCopy2 = self;
        v20 = v18;
      }

      else
      {
        selfCopy2 = self;
        v20 = 0;
      }

      [(NSMutableDictionary *)selfCopy2 setObject:v20 forKeyedSubscript:v16];
    }
  }
}

- (void)MCSetUnionSetting:(id)setting values:(id)values
{
  settingCopy = setting;
  valuesCopy = values;
  if (valuesCopy)
  {
    v8 = +[MCRestrictionManager sharedManager];
    defaultSettings = [v8 defaultSettings];

    v10 = MCUnionKey;
    v11 = [defaultSettings objectForKeyedSubscript:MCUnionKey];
    v12 = [v11 objectForKeyedSubscript:settingCopy];

    if (!v12)
    {
      settingCopy = [NSString stringWithFormat:@"%@ is not an union setting.", settingCopy];
      v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:settingCopy userInfo:0];
      v23 = v22;

      objc_exception_throw(v22);
    }

    v13 = [(NSMutableDictionary *)self objectForKeyedSubscript:v10];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    v24 = MCUnionValuesKey;
    v25 = valuesCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v14 setObject:v15 forKeyedSubscript:settingCopy];

    [(NSMutableDictionary *)self setObject:v14 forKeyedSubscript:v10];
  }

  else
  {
    v16 = MCUnionKey;
    v17 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCUnionKey];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      [v18 removeObjectForKey:settingCopy];
      if ([v18 count])
      {
        selfCopy2 = self;
        v20 = v18;
      }

      else
      {
        selfCopy2 = self;
        v20 = 0;
      }

      [(NSMutableDictionary *)selfCopy2 setObject:v20 forKeyedSubscript:v16];
    }
  }
}

- (void)_MCFilterRestrictionPayloadKeys:(id)keys filterOut:(BOOL)out
{
  keysCopy = keys;
  v7 = keysCopy;
  if (keysCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100015AA8;
    v9[3] = &unk_10011BEB8;
    v9[4] = self;
    v10 = keysCopy;
    outCopy = out;
    v8 = objc_retainBlock(v9);
    (v8[2])(v8, MCRestrictedBoolKey);
    (v8[2])(v8, MCRestrictedValueKey);
    (v8[2])(v8, MCIntersectionKey);
    (v8[2])(v8, MCUnionKey);
  }
}

- (void)MCFixUpRestrictionsDictionaryForMDMReporting
{
  selfCopy = self;
  v3 = MCRestrictedValueKey;
  v4 = [(NSMutableDictionary *)self objectForKey:MCRestrictedValueKey];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    v7 = MCFeaturePasscodeLockGraceTime;
    v8 = [v6 objectForKey:MCFeaturePasscodeLockGraceTime];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mutableCopy];
      v11 = MCRestrictedValueValueKey;
      v12 = [v10 valueForKey:MCRestrictedValueValueKey];
      v13 = v12;
      if (v12)
      {
        v14 = selfCopy;
        v15 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v12 longValue] / 60);
        [v10 setObject:v15 forKey:v11];

        selfCopy = v14;
      }

      [v6 setObject:v10 forKey:v7];
    }

    v16 = MCFeatureAutoLockTime;
    v17 = [v6 objectForKey:MCFeatureAutoLockTime];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 mutableCopy];
      v20 = MCRestrictedValueValueKey;
      v21 = [v19 valueForKey:MCRestrictedValueValueKey];
      v22 = v21;
      if (v21)
      {
        v23 = selfCopy;
        v24 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v21 longValue] / 60);
        [v19 setObject:v24 forKey:v20];

        selfCopy = v23;
      }

      [v6 setObject:v19 forKey:v16];
    }

    [(NSMutableDictionary *)selfCopy setObject:v6 forKey:v3];
  }

  v25 = MCIntersectionKey;
  v26 = [(NSMutableDictionary *)selfCopy objectForKey:MCIntersectionKey];
  if (v26)
  {
    v41 = v25;
    v42 = v26;
    v43 = selfCopy;
    v44 = v5;
    v27 = [v26 mutableCopy];
    +[MCRestrictionUtilities intersectionFeaturesWithPayloadRestictionKeyAlias];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v55 = 0u;
    v28 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      v45 = *v53;
      do
      {
        v31 = 0;
        v46 = v29;
        do
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v52 + 1) + 8 * v31);
          v33 = [MCRestrictionUtilities intersectionPayloadRestrictionKeysForFeature:v32];
          v34 = [v27 objectForKey:v32];
          if (v34)
          {
            v35 = v33 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v36 = v33;
            v37 = [v36 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v49;
              do
              {
                for (i = 0; i != v38; i = i + 1)
                {
                  if (*v49 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  [v27 setObject:v34 forKey:*(*(&v48 + 1) + 8 * i)];
                }

                v38 = [v36 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v38);
            }

            [v27 removeObjectForKey:v32];
            v30 = v45;
            v29 = v46;
          }

          v31 = v31 + 1;
        }

        while (v31 != v29);
        v29 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v29);
    }

    [(NSMutableDictionary *)v43 setObject:v27 forKey:v41];
    v5 = v44;
    v26 = v42;
  }
}

- (void)MCSanitizeRestrictions
{
  v3 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v3 defaultRestrictions];

  v5 = MCRestrictedBoolKey;
  v6 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCRestrictedBoolKey];
  v7 = [v6 mutableCopy];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v61 + 1) + 8 * i);
        if (([(NSMutableDictionary *)self MCValidateBoolRestriction:v13 inRestrictions:v8 defaultRestrictions:defaultRestrictions]& 1) == 0)
        {
          [v7 setObject:0 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v10);
  }

  v47 = v8;

  v14 = [v7 copy];
  [(NSMutableDictionary *)self setObject:v14 forKeyedSubscript:v5];

  v15 = MCRestrictedValueKey;
  v16 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCRestrictedValueKey];
  v17 = [v16 mutableCopy];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v57 + 1) + 8 * j);
        if (([(NSMutableDictionary *)self MCValidateValueRestriction:v23 inRestrictions:v18 defaultRestrictions:defaultRestrictions]& 1) == 0)
        {
          [v17 setObject:0 forKeyedSubscript:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v20);
  }

  v48 = v7;

  v46 = v17;
  v24 = [v17 copy];
  [(NSMutableDictionary *)self setObject:v24 forKeyedSubscript:v15];

  v25 = MCIntersectionKey;
  v26 = [(NSMutableDictionary *)self objectForKeyedSubscript:MCIntersectionKey];
  v27 = [v26 mutableCopy];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v54;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v53 + 1) + 8 * k);
        if (([(NSMutableDictionary *)self MCValidateIntersectionRestriction:v33 inRestrictions:v28 defaultRestrictions:defaultRestrictions]& 1) == 0)
        {
          [v27 setObject:0 forKeyedSubscript:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v30);
  }

  v45 = v27;
  v34 = [v27 copy];
  [(NSMutableDictionary *)self setObject:v34 forKeyedSubscript:v25];

  v44 = MCUnionKey;
  v35 = [(NSMutableDictionary *)self objectForKeyedSubscript:?];
  v36 = [v35 mutableCopy];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = v35;
  v38 = [v37 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v50;
    do
    {
      for (m = 0; m != v39; m = m + 1)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v49 + 1) + 8 * m);
        if (([(NSMutableDictionary *)self MCValidateUnionRestriction:v42 inRestrictions:v37 defaultRestrictions:defaultRestrictions]& 1) == 0)
        {
          [v36 setObject:0 forKeyedSubscript:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v39);
  }

  v43 = [v36 copy];
  [(NSMutableDictionary *)self setObject:v43 forKeyedSubscript:v44];
}

@end