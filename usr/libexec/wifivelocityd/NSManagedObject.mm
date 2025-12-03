@interface NSManagedObject
- (id)_w5AllAttributes;
- (id)_w5DictionaryRepresentation;
@end

@implementation NSManagedObject

- (id)_w5DictionaryRepresentation
{
  v29 = objc_opt_new();
  [(NSManagedObject *)self _w5AllAttributes];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v6 = &WiFiManagerClientCopyProperty_ptr;
    do
    {
      v7 = 0;
      v28 = v4;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [(NSManagedObject *)self valueForKey:v8, v26, v27];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if (![v11 containsString:@"Faulting"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v12 = v6[456];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v5;
            selfCopy = self;
            v15 = v6;
            v16 = v9;
            _w5DictionaryRepresentation = [v16 _w5DictionaryRepresentation];
            if (_w5DictionaryRepresentation)
            {
              [v29 setValue:_w5DictionaryRepresentation forKey:v8];
            }

            else
            {
              v21 = [v16 description];
              [v29 setValue:v21 forKey:v8];
            }

            v6 = v15;
            self = selfCopy;
            v5 = v13;
            v4 = v28;
          }

          else if ([v9 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding] && objc_msgSend(objc_opt_class(), "supportsSecureCoding"))
          {
            [v29 setValue:v9 forKey:v8];
          }

          else
          {
            v18 = sub_100098A04();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              v35 = 136316418;
              v36 = "[NSManagedObject(WiFiVelocity) _w5DictionaryRepresentation]";
              v37 = 2080;
              v38 = "NSManagedObject+WiFiVelocity.m";
              v39 = 1024;
              v40 = 45;
              v41 = 2112;
              v42 = v19;
              v43 = 2112;
              v44 = v8;
              v45 = 2112;
              v46 = v9;
              v20 = v19;
              LODWORD(v27) = 58;
              v26 = &v35;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v4);
  }

  allKeys = [v29 allKeys];
  if ([allKeys count])
  {
    v23 = v29;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

- (id)_w5AllAttributes
{
  outCount = 0;
  v2 = objc_opt_new();
  v3 = objc_opt_class();
  if ([(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
  {
    while (1)
    {
      v4 = class_copyPropertyList(v3, &outCount);
      if (outCount)
      {
        break;
      }

      v3 = [(objc_class *)v3 superclass];
      if (v4)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (([(objc_class *)v3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
      {
        goto LABEL_13;
      }
    }

    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v4[i]);
      v7 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", property_getName(v4[i]), +[NSString defaultCStringEncoding]);
      if (!Attributes)
      {
        goto LABEL_7;
      }

      v8 = [NSString stringWithUTF8String:Attributes];
      v9 = [v8 hasPrefix:@"T:"];

      if ((v9 & 1) == 0)
      {
        v10 = [NSString stringWithUTF8String:Attributes];
        v11 = [v10 containsString:{@", R"}];

        if ((v11 & 1) == 0)
        {
LABEL_7:
          [v2 addObject:v7];
        }
      }
    }

    v3 = [(objc_class *)v3 superclass];
LABEL_11:
    free(v4);
    goto LABEL_12;
  }

LABEL_13:
  v12 = [v2 copy];

  return v12;
}

@end