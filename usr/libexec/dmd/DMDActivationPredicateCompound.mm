@interface DMDActivationPredicateCompound
- (DMDActivationPredicateCompound)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 subPredicateObservers:(id)a5 predicate:(id)a6;
- (id)metadata;
- (void)invalidate;
- (void)reportActivationPredicateObserverDidTrigger;
- (void)updateObserverRegistration;
@end

@implementation DMDActivationPredicateCompound

- (DMDActivationPredicateCompound)initWithDelegate:(id)a3 uniqueIdentifier:(id)a4 subPredicateObservers:(id)a5 predicate:(id)a6
{
  v10 = a5;
  v15.receiver = self;
  v15.super_class = DMDActivationPredicateCompound;
  v11 = [(DMDActivationPredicateObserver *)&v15 initWithDelegate:a3 uniqueIdentifier:a4 predicate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    subPredicateObservers = v11->_subPredicateObservers;
    v11->_subPredicateObservers = v12;
  }

  return v11;
}

- (void)updateObserverRegistration
{
  v12.receiver = self;
  v12.super_class = DMDActivationPredicateCompound;
  [(DMDActivationPredicateObserver *)&v12 updateObserverRegistration];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) updateObserverRegistration];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)invalidate
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = DMDActivationPredicateCompound;
  [(DMDActivationPredicateObserver *)&v8 invalidate];
}

- (id)metadata
{
  v17.receiver = self;
  v17.super_class = DMDActivationPredicateCompound;
  v3 = [(DMDActivationPredicateObserver *)&v17 metadata];
  v4 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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

        v11 = [*(*(&v13 + 1) + 8 * i) metadata];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [v3 setObject:v5 forKeyedSubscript:DMFDeclarationStatePredicateSubPredicatesKey];
  }

  return v3;
}

- (void)reportActivationPredicateObserverDidTrigger
{
  v12.receiver = self;
  v12.super_class = DMDActivationPredicateCompound;
  [(DMDActivationPredicateObserver *)&v12 reportActivationPredicateObserverDidTrigger];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(DMDActivationPredicateCompound *)self subPredicateObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) reportActivationPredicateObserverDidTrigger];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

@end