@interface APExpressionReferenceLibrary
- (APExpressionReferenceLibrary)initWithStorage:(id)a3;
- (id)_createNodeFromDictionary:(id)a3 identifier:(id)a4 error:(id *)a5;
- (id)_validateAndAddReference:(id)a3 reference:(id)a4;
- (id)addReference:(id)a3;
- (id)addReferences:(id)a3;
- (id)referenceFromIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)referenceCount;
- (void)_persistNewReferences;
- (void)beginUpdate;
- (void)dealloc;
- (void)endUpdate;
- (void)removeReferences:(id)a3;
@end

@implementation APExpressionReferenceLibrary

- (APExpressionReferenceLibrary)initWithStorage:(id)a3
{
  v5 = a3;
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

  if (objc_opt_respondsToSelector() & 1) == 0 || ([v5 initialize])
  {
    objc_storeStrong(&v6->_storage, a3);
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
    [v5 finalize];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)_persistNewReferences
{
  v3 = [(APExpressionReferenceLibrary *)self lock];
  [v3 lock];

  v4 = [(APExpressionReferenceLibrary *)self updateCount];
  if (v4)
  {
    v3 = [(APExpressionReferenceLibrary *)self unsavedReferences];
    if ([v3 count] < 0x65)
    {
      goto LABEL_11;
    }
  }

  v5 = [(APExpressionReferenceLibrary *)self storage];
  if (v5)
  {
    v6 = [(APExpressionReferenceLibrary *)self storage];
    v7 = [(APExpressionReferenceLibrary *)self unsavedReferences];
    v8 = [v6 persist:v7];

    if (v4)
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

    v3 = [(APExpressionReferenceLibrary *)self unsavedReferences];
    [v3 removeAllObjects];
LABEL_11:

    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
  v9 = [(APExpressionReferenceLibrary *)self lock];
  [v9 unlock];
}

- (id)_createNodeFromDictionary:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:@"expression"];

  if (v9)
  {
    v10 = [APTargetingExpressionNode alloc];
    v11 = [v7 objectForKeyedSubscript:@"expression"];
    v12 = [v7 objectForKeyedSubscript:@"subexpressions"];
    v13 = [v7 objectForKeyedSubscript:@"data"];
    v14 = [(APTargetingExpressionNode *)v10 initWithParent:0 identifier:v8 expressionOrReference:v11 subExpressions:v12 data:v13 error:a5];
  }

  else
  {
    v15 = [v7 objectForKey:@"adaptor"];

    if (v15)
    {
      v14 = [[APDataSourceNode alloc] initWithParent:0 identifier:v8 dataSource:v7 error:a5];
    }

    else
    {
      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = v7;
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
  v3 = [(APExpressionReferenceLibrary *)self storage];
  if (v3)
  {
    v4 = v3;
    v5 = [(APExpressionReferenceLibrary *)self storage];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(APExpressionReferenceLibrary *)self storage];
      [v7 finalize];
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
  v3 = [(APExpressionReferenceLibrary *)self lock];
  [v3 lock];

  [(APExpressionReferenceLibrary *)self setUpdateCount:[(APExpressionReferenceLibrary *)self updateCount]+ 1];
  v4 = [(APExpressionReferenceLibrary *)self lock];
  [v4 unlock];
}

- (void)endUpdate
{
  v3 = [(APExpressionReferenceLibrary *)self lock];
  [v3 lock];

  if ([(APExpressionReferenceLibrary *)self updateCount])
  {
    [(APExpressionReferenceLibrary *)self setUpdateCount:[(APExpressionReferenceLibrary *)self updateCount]- 1];
  }

  [(APExpressionReferenceLibrary *)self _persistNewReferences];
  v4 = [(APExpressionReferenceLibrary *)self lock];
  [v4 unlock];
}

- (id)referenceFromIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(APExpressionReferenceLibrary *)self lock];
  [v7 lock];

  v8 = [(APExpressionReferenceLibrary *)self referenceCache];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = [(APExpressionReferenceLibrary *)self unsavedReferences];
    v11 = [v10 objectForKeyedSubscript:v6];

    if (v11 || (-[APExpressionReferenceLibrary storage](self, "storage"), v12 = objc_claimAutoreleasedReturnValue(), [v12 find:v6], v11 = objc_claimAutoreleasedReturnValue(), v12, v11))
    {
      v13 = [(APExpressionReferenceLibrary *)self _createNodeFromDictionary:v11 identifier:v6 error:a4];
      if (v13)
      {
        v9 = v13;
        v14 = [(APExpressionReferenceLibrary *)self referenceCache];
        [v14 setObject:v9 forKey:v6];
      }

      else
      {
        if (a4)
        {
          v15 = *a4;
        }

        else
        {
          v15 = @"(unavailable)";
        }

        v16 = [NSString stringWithFormat:@"Error creating node %@: %@", v6, v15];
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

  v18 = [(APExpressionReferenceLibrary *)self lock];
  [v18 unlock];

  if (a4 && !v9)
  {
    v19 = [NSString stringWithFormat:@"Reference '%@' not registered.", v6];
    v28 = NSLocalizedDescriptionKey;
    v29 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1128 userInfo:v20];
  }

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___APExpressionEvaluationProtocol])
  {
    v21 = v9;
  }

  else
  {
    v22 = [NSString stringWithFormat:@"Reference %@ does not conform to APExpressionEvaluationProtocol", v6];
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (a4)
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = v22;
      v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1121 userInfo:v24];
    }

    v21 = 0;
  }

  return v21;
}

- (id)_validateAndAddReference:(id)a3 reference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APExpressionReferenceLibrary *)self lock];
  [v8 lock];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(APExpressionReferenceLibrary *)self unsavedReferences];
    [v9 setObject:v7 forKey:v6];

    v10 = [(APExpressionReferenceLibrary *)self lock];
    [v10 unlock];

    v11 = 0;
  }

  else
  {
    v12 = [(APExpressionReferenceLibrary *)self lock];
    [v12 unlock];

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

- (id)addReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
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
        v14 = [v13 allKeys];
        v15 = [v14 firstObject];

        objc_opt_class();
        v26 = v13;
        if (objc_opt_isKindOfClass())
        {
          v16 = [v13 allValues];
          v17 = [v16 firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [(APExpressionReferenceLibrary *)self _validateAndAddReference:v15 reference:v17];
          }

          else
          {
            v23 = [NSString stringWithFormat:@"Reference '%@' must be dictionary type.", v15, v26];
            v28 = NSLocalizedDescriptionKey;
            v29 = v23;
            v24 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v10 = [NSError errorWithDomain:@"com.apple.ap.targetingexpressions" code:-1112 userInfo:v24];
          }
        }

        else
        {
          v17 = [NSString stringWithFormat:@"Identifier '%@' must be string type.", v15, v13];
          v30 = NSLocalizedDescriptionKey;
          v31 = v17;
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

- (id)addReferences:(id)a3
{
  v4 = a3;
  v5 = [(APExpressionReferenceLibrary *)self lock];
  [v5 lock];

  v6 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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

  v13 = [(APExpressionReferenceLibrary *)self lock];
  [v13 unlock];

  return v6;
}

- (void)removeReferences:(id)a3
{
  v4 = a3;
  v5 = [(APExpressionReferenceLibrary *)self lock];
  [v5 lock];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        v12 = [(APExpressionReferenceLibrary *)self referenceCache];
        [v12 removeObjectForKey:v11];

        v13 = [(APExpressionReferenceLibrary *)self unsavedReferences];
        [v13 removeObjectForKey:v11];

        v14 = [(APExpressionReferenceLibrary *)self storage];

        if (v14)
        {
          v15 = [(APExpressionReferenceLibrary *)self storage];
          [v15 remove:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = [(APExpressionReferenceLibrary *)self lock];
  [v16 unlock];
}

- (unint64_t)referenceCount
{
  v3 = [(APExpressionReferenceLibrary *)self lock];
  [v3 lock];

  v4 = [(APExpressionReferenceLibrary *)self storage];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(APExpressionReferenceLibrary *)self storage];
    v6 = [v5 recordCount];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(APExpressionReferenceLibrary *)self unsavedReferences];
  v8 = [v7 count];

  v9 = [(APExpressionReferenceLibrary *)self lock];
  [v9 unlock];

  return v6 + v8;
}

@end