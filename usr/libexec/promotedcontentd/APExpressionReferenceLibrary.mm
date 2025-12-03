@interface APExpressionReferenceLibrary
- (APExpressionReferenceLibrary)initWithStorage:(id)storage;
- (id)_createNodeFromDictionary:(id)dictionary identifier:(id)identifier error:(id *)error;
- (id)_validateAndAddReference:(id)reference reference:(id)a4;
- (id)addReference:(id)reference;
- (id)addReferences:(id)references;
- (id)referenceFromIdentifier:(id)identifier error:(id *)error;
- (unint64_t)referenceCount;
- (void)_persistNewReferences;
- (void)beginUpdate;
- (void)dealloc;
- (void)endUpdate;
- (void)removeReferences:(id)references;
@end

@implementation APExpressionReferenceLibrary

- (APExpressionReferenceLibrary)initWithStorage:(id)storage
{
  storageCopy = storage;
  v17.receiver = self;
  v17.super_class = APExpressionReferenceLibrary;
  v6 = [(APExpressionReferenceLibrary *)&v17 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = objc_alloc_init(APUnfairRecursiveLock);
  lock = v6->_lock;
  v6->_lock = v7;

  v9 = +[NSMutableDictionary dictionary];
  referenceCache = v6->_referenceCache;
  v6->_referenceCache = v9;

  v11 = +[NSMutableDictionary dictionary];
  unsavedReferences = v6->_unsavedReferences;
  v6->_unsavedReferences = v11;

  if (objc_opt_respondsToSelector() & 1) == 0 || ([storageCopy initialize])
  {
    objc_storeStrong(&v6->_storage, storage);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

  v15 = APLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to initialize expression library data store. Aborting.", v16, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [storageCopy finalize];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)_persistNewReferences
{
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  updateCount = [(APExpressionReferenceLibrary *)self updateCount];
  if (updateCount)
  {
    lock = [(APExpressionReferenceLibrary *)self unsavedReferences];
    if ([lock count] < 0x65)
    {
      goto LABEL_11;
    }
  }

  storage = [(APExpressionReferenceLibrary *)self storage];
  if (storage)
  {
    storage2 = [(APExpressionReferenceLibrary *)self storage];
    unsavedReferences = [(APExpressionReferenceLibrary *)self unsavedReferences];
    v8 = [storage2 persist:unsavedReferences];

    if (updateCount)
    {

      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    lock = [(APExpressionReferenceLibrary *)self unsavedReferences];
    [lock removeAllObjects];
LABEL_11:

    goto LABEL_12;
  }

  if (updateCount)
  {
    goto LABEL_11;
  }

LABEL_12:
  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];
}

- (id)_createNodeFromDictionary:(id)dictionary identifier:(id)identifier error:(id *)error
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v9 = [dictionaryCopy objectForKey:@"expression"];

  if (v9)
  {
    v10 = [APTargetingExpressionNode alloc];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"expression"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"subexpressions"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    v14 = [(APTargetingExpressionNode *)v10 initWithParent:0 identifier:identifierCopy expressionOrReference:v11 subExpressions:v12 data:v13 error:error];
  }

  else
  {
    v15 = [dictionaryCopy objectForKey:@"adaptor"];

    if (v15)
    {
      v14 = [[APDataSourceNode alloc] initWithParent:0 identifier:identifierCopy dataSource:dictionaryCopy error:error];
    }

    else
    {
      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = dictionaryCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Value does not represent a targeting expression or data adaptor: %{public}@", &v18, 0xCu);
      }

      v14 = 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  [(APExpressionReferenceLibrary *)self _persistNewReferences];
  [(APUnfairRecursiveLock *)self->_lock lock];
  storage = [(APExpressionReferenceLibrary *)self storage];
  if (storage)
  {
    v4 = storage;
    storage2 = [(APExpressionReferenceLibrary *)self storage];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      storage3 = [(APExpressionReferenceLibrary *)self storage];
      [storage3 finalize];
    }
  }

  storage = self->_storage;
  self->_storage = 0;

  [(APUnfairRecursiveLock *)self->_lock unlock];
  v9.receiver = self;
  v9.super_class = APExpressionReferenceLibrary;
  [(APExpressionReferenceLibrary *)&v9 dealloc];
}

- (void)beginUpdate
{
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  [(APExpressionReferenceLibrary *)self setUpdateCount:[(APExpressionReferenceLibrary *)self updateCount]+ 1];
  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];
}

- (void)endUpdate
{
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  if ([(APExpressionReferenceLibrary *)self updateCount])
  {
    [(APExpressionReferenceLibrary *)self setUpdateCount:[(APExpressionReferenceLibrary *)self updateCount]- 1];
  }

  [(APExpressionReferenceLibrary *)self _persistNewReferences];
  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];
}

- (id)referenceFromIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  referenceCache = [(APExpressionReferenceLibrary *)self referenceCache];
  v9 = [referenceCache objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    unsavedReferences = [(APExpressionReferenceLibrary *)self unsavedReferences];
    v11 = [unsavedReferences objectForKeyedSubscript:identifierCopy];

    if (v11 || (-[APExpressionReferenceLibrary storage](self, "storage"), v12 = objc_claimAutoreleasedReturnValue(), [v12 find:identifierCopy], v11 = objc_claimAutoreleasedReturnValue(), v12, v11))
    {
      v13 = [(APExpressionReferenceLibrary *)self _createNodeFromDictionary:v11 identifier:identifierCopy error:error];
      if (v13)
      {
        v9 = v13;
        referenceCache2 = [(APExpressionReferenceLibrary *)self referenceCache];
        [referenceCache2 setObject:v9 forKey:identifierCopy];
      }

      else
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = @"(unavailable)";
        }

        v16 = [NSString stringWithFormat:@"Error creating node %@: %@", identifierCopy, v15];
        v17 = APLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];

  if (error && !v9)
  {
    identifierCopy = [NSString stringWithFormat:@"Reference '%@' not registered.", identifierCopy];
    v28 = NSLocalizedDescriptionKey;
    v29 = identifierCopy;
    v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1128 userInfo:v20];
  }

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___APExpressionEvaluationProtocol])
  {
    v21 = v9;
  }

  else
  {
    identifierCopy2 = [NSString stringWithFormat:@"Reference %@ does not conform to APExpressionEvaluationProtocol", identifierCopy];
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = identifierCopy2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = identifierCopy2;
      v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1121 userInfo:v24];
    }

    v21 = 0;
  }

  return v21;
}

- (id)_validateAndAddReference:(id)reference reference:(id)a4
{
  referenceCopy = reference;
  v7 = a4;
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsavedReferences = [(APExpressionReferenceLibrary *)self unsavedReferences];
    [unsavedReferences setObject:v7 forKey:referenceCopy];

    lock2 = [(APExpressionReferenceLibrary *)self lock];
    [lock2 unlock];

    v11 = 0;
  }

  else
  {
    lock3 = [(APExpressionReferenceLibrary *)self lock];
    [lock3 unlock];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"Object must be dictionary type (%@)", v14];

    v18 = NSLocalizedDescriptionKey;
    v19 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v16];
  }

  return v11;
}

- (id)addReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy && [referenceCopy length])
  {
    v6 = [v5 dataUsingEncoding:4];
    v27 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v27];
    v8 = v27;
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v7;
        allKeys = [v13 allKeys];
        firstObject = [allKeys firstObject];

        objc_opt_class();
        v26 = v13;
        if (objc_opt_isKindOfClass())
        {
          allValues = [v13 allValues];
          firstObject2 = [allValues firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [(APExpressionReferenceLibrary *)self _validateAndAddReference:firstObject reference:firstObject2];
          }

          else
          {
            v23 = [NSString stringWithFormat:@"Reference '%@' must be dictionary type.", firstObject, v26];
            v28 = NSLocalizedDescriptionKey;
            v29 = v23;
            v24 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v10 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v24];
          }
        }

        else
        {
          firstObject2 = [NSString stringWithFormat:@"Identifier '%@' must be string type.", firstObject, v13];
          v30 = NSLocalizedDescriptionKey;
          v31 = firstObject2;
          v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v10 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v22];
        }
      }

      else
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [NSString stringWithFormat:@"Reference is an invalid JSON object type '%@'", v19];

        v32 = NSLocalizedDescriptionKey;
        v33 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v10 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v21];
      }
    }
  }

  else
  {
    v34 = NSLocalizedDescriptionKey;
    v35 = @"Reference is nil or empty.";
    v11 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1122 userInfo:v11];

    v9 = v12;
    v10 = v9;
  }

  return v10;
}

- (id)addReferences:(id)references
{
  referencesCopy = references;
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  v6 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = referencesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(APExpressionReferenceLibrary *)self addReference:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];

  return v6;
}

- (void)removeReferences:(id)references
{
  referencesCopy = references;
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = referencesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        referenceCache = [(APExpressionReferenceLibrary *)self referenceCache];
        [referenceCache removeObjectForKey:v11];

        unsavedReferences = [(APExpressionReferenceLibrary *)self unsavedReferences];
        [unsavedReferences removeObjectForKey:v11];

        storage = [(APExpressionReferenceLibrary *)self storage];

        if (storage)
        {
          storage2 = [(APExpressionReferenceLibrary *)self storage];
          [storage2 remove:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];
}

- (unint64_t)referenceCount
{
  lock = [(APExpressionReferenceLibrary *)self lock];
  [lock lock];

  storage = [(APExpressionReferenceLibrary *)self storage];
  if (objc_opt_respondsToSelector())
  {
    storage2 = [(APExpressionReferenceLibrary *)self storage];
    recordCount = [storage2 recordCount];
  }

  else
  {
    recordCount = 0;
  }

  unsavedReferences = [(APExpressionReferenceLibrary *)self unsavedReferences];
  v8 = [unsavedReferences count];

  lock2 = [(APExpressionReferenceLibrary *)self lock];
  [lock2 unlock];

  return recordCount + v8;
}

@end