@interface SWCDomainCache
- (id)_entriesForDomain:(id)a3;
- (id)_entriesFromDomain:(id)a3;
- (id)entriesForDomain:(id)a3;
- (void)clear;
- (void)updateCachedDomainsForEntries:(id)a3;
@end

@implementation SWCDomainCache

- (void)updateCachedDomainsForEntries:(id)a3
{
  v4 = a3;
  v5 = +[_SWCPrefs sharedPrefs];
  v6 = [v5 isFastCheckEnabled];

  if (v6)
  {
    if (!self->_cachedEntries)
    {
      v7 = +[NSMutableDictionary dictionary];
      cachedEntries = self->_cachedEntries;
      self->_cachedEntries = v7;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v4;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 domain];
          if ([v14 modeOfOperation])
          {
            self->_hasDeveloperModeDomains = 1;
          }

          if (([v14 modeOfOperation] & 2) != 0)
          {
            self->_hasManagedModeDomains = 1;
          }

          v15 = [(SWCDomainCache *)self _entriesFromDomain:v14];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 mutableCopy];
            [v17 addObject:v13];
            [(NSMutableDictionary *)self->_cachedEntries setObject:v17 forKeyedSubscript:v14];
          }

          else
          {
            [(NSMutableDictionary *)self->_cachedEntries setObject:v13 forKeyedSubscript:v14];
          }

          if ([v14 isWildcard])
          {
            v18 = [v14 nonWildcardDomain];
            v19 = [(SWCDomainCache *)self _entriesFromDomain:v18];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 mutableCopy];
              [v21 addObject:v13];
              [(NSMutableDictionary *)self->_cachedEntries setObject:v21 forKeyedSubscript:v18];
            }

            else
            {
              [(NSMutableDictionary *)self->_cachedEntries setObject:v13 forKeyedSubscript:v18];
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v4 = v22;
  }
}

- (id)entriesForDomain:(id)a3
{
  v4 = a3;
  v5 = [(SWCDomainCache *)self _entriesForDomain:v4 operationMode:0];
  v6 = v5;
  if (self->_hasDeveloperModeDomains || self->_hasManagedModeDomains)
  {
    if (v5)
    {
      v7 = [v5 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
    }

    v8 = v7;
    if (self->_hasDeveloperModeDomains)
    {
      v9 = [(SWCDomainCache *)self _entriesForDomain:v4 operationMode:1];
      [v8 unionOrderedSet:v9];
      if (self->_hasManagedModeDomains)
      {
        v10 = [(SWCDomainCache *)self _entriesForDomain:v4 operationMode:3];
        [v8 unionOrderedSet:v10];
      }
    }

    if (self->_hasManagedModeDomains)
    {
      v11 = [(SWCDomainCache *)self _entriesForDomain:v4 operationMode:2];
      [v8 unionOrderedSet:v11];
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)_entriesForDomain:(id)a3
{
  v4 = a3;
  v5 = [(SWCDomainCache *)self _entriesFromDomain:v4];
  if (v5 || ![v4 isWildcard])
  {
    v6 = [v4 host];
    v8 = [v6 componentsSeparatedByString:@"."];
    if ([v8 count] >= 3)
    {
      v22 = v6;
      if ([v8 count] == 2)
      {
LABEL_13:
        v7 = v5;
        v6 = v22;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ++v9;
          v10 = &stru_100035ED8;
          if (v9 < [v8 count] - 1)
          {
            v11 = v9;
            v12 = &stru_100035ED8;
            do
            {
              v13 = [v8 objectAtIndexedSubscript:v11];
              v10 = [(__CFString *)v12 stringByAppendingFormat:@"%@.", v13];

              ++v11;
              v12 = v10;
            }

            while (v11 < [v8 count] - 1);
          }

          v14 = [v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];
          v15 = [(__CFString *)v10 stringByAppendingFormat:@"%@", v14];

          v16 = [_SWCDomain alloc];
          v17 = [v4 port];
          v18 = [v16 initWithHost:v15 port:v17 wildcard:1 modeOfOperation:{objc_msgSend(v4, "modeOfOperation")}];

          v19 = [(SWCDomainCache *)self _entriesFromDomain:v18];
          if (v19)
          {
            break;
          }

          if (v9 >= [v8 count] - 2)
          {
            goto LABEL_13;
          }
        }

        v20 = v19;
        if (v5)
        {
          v7 = [v5 mutableCopy];
          [v7 unionOrderedSet:v20];
        }

        else
        {
          v7 = v19;
        }

        v6 = v22;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = [v4 nonWildcardDomain];
    v7 = [(SWCDomainCache *)self _entriesFromDomain:v6];
  }

  return v7;
}

- (void)clear
{
  cachedEntries = self->_cachedEntries;
  self->_cachedEntries = 0;
  _objc_release_x1();
}

- (id)_entriesFromDomain:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_cachedEntries objectForKeyedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSOrderedSet orderedSetWithObject:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end