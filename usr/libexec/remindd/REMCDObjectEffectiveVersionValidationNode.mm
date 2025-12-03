@interface REMCDObjectEffectiveVersionValidationNode
- (id)childrenNodes;
@end

@implementation REMCDObjectEffectiveVersionValidationNode

- (id)childrenNodes
{
  backingCDObject = [(REMCDObjectEffectiveVersionValidationNode *)self backingCDObject];
  if (!backingCDObject)
  {
    sub_10076AAC0();
  }

  v3 = +[NSMutableArray array];
  entity = [backingCDObject entity];
  v5 = [REMCDObject relationshipsEligibleForEffectiveMinimumSupportedVersionPropagationWithEntity:entity];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        name = [*(*(&v25 + 1) + 8 * i) name];
        v8 = backingCDObject;
        v9 = [backingCDObject objectIDsForRelationshipNamed:name];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = objc_alloc_init(REMCDObjectEffectiveVersionValidationNode);
              [(REMCDObjectEffectiveVersionValidationNode *)v16 setManagedObjectID:v15];
              [(REMCDObjectEffectiveVersionValidationNode *)v16 setBackingCDObject:0];
              [v3 addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        backingCDObject = v8;
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return v3;
}

@end