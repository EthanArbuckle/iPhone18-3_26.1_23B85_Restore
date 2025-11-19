@interface _DASTaskDependencies
- (_DASTaskDependencies)initWithProducedResultIdentifiers:(id)a3 dependencyIdentifiers:(id)a4;
- (id)description;
@end

@implementation _DASTaskDependencies

- (_DASTaskDependencies)initWithProducedResultIdentifiers:(id)a3 dependencyIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DASTaskDependencies;
  v9 = [(_DASTaskDependencies *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_producedResultIdentifiers, a3);
    objc_storeStrong(&v10->_dependencyIdentifiers, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: \n", objc_opt_class()];
  v4 = v3;
  if (self->_producedResultIdentifiers)
  {
    [v3 appendFormat:@"ProducedResultIdentifiers: ["];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_producedResultIdentifiers;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"%@, ", *(*(&v20 + 1) + 8 * i)];
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    [v4 appendFormat:@"]\n"];
  }

  if (self->_dependencyIdentifiers)
  {
    [v4 appendFormat:@"DependencyIdentifiers: ["];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->_dependencyIdentifiers;
    v11 = [(NSSet *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v4 appendFormat:@"%@, ", *(*(&v16 + 1) + 8 * j)];
        }

        v12 = [(NSSet *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v12);
    }

    [v4 appendFormat:@"]\n"];
  }

  [v4 appendFormat:@" >"];

  return v4;
}

@end