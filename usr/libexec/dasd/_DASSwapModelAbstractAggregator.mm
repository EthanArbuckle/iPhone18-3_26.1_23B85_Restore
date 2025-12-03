@interface _DASSwapModelAbstractAggregator
- (_DASSwapModelAbstractAggregator)initWithAlgorithms:(id)algorithms;
- (void)updateScores;
@end

@implementation _DASSwapModelAbstractAggregator

- (_DASSwapModelAbstractAggregator)initWithAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  v9.receiver = self;
  v9.super_class = _DASSwapModelAbstractAggregator;
  v5 = [(_DASSwapModelAbstractAggregator *)&v9 init];
  if (v5)
  {
    v6 = [algorithmsCopy copy];
    algorithms = v5->_algorithms;
    v5->_algorithms = v6;
  }

  return v5;
}

- (void)updateScores
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_algorithms;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) updateScores];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end