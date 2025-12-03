@interface WiFiNWReliabilityMonitorDataStore
- (BOOL)addSample:(id)sample;
- (WiFiNWReliabilityMonitorDataStore)initWithMetric:(unint64_t)metric withMaxSamples:(unint64_t)samples;
- (void)dealloc;
- (void)getSamples:(id)samples;
@end

@implementation WiFiNWReliabilityMonitorDataStore

- (WiFiNWReliabilityMonitorDataStore)initWithMetric:(unint64_t)metric withMaxSamples:(unint64_t)samples
{
  v10.receiver = self;
  v10.super_class = WiFiNWReliabilityMonitorDataStore;
  v6 = [(WiFiNWReliabilityMonitorDataStore *)&v10 init];
  if (v6 && (+[NSMutableArray array], v7 = objc_claimAutoreleasedReturnValue(), buffer = v6->_buffer, v6->_buffer = v7, buffer, v6->_buffer))
  {
    v6->_metric = metric;
    v6->_maxSamples = samples;
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    [(NSMutableArray *)buffer removeAllObjects];
    v4 = self->_buffer;
    self->_buffer = 0;
  }

  v5.receiver = self;
  v5.super_class = WiFiNWReliabilityMonitorDataStore;
  [(WiFiNWReliabilityMonitorDataStore *)&v5 dealloc];
}

- (BOOL)addSample:(id)sample
{
  [(NSMutableArray *)self->_buffer insertObject:sample atIndex:0];
  if ([(NSMutableArray *)self->_buffer count]> self->_maxSamples)
  {
    [(NSMutableArray *)self->_buffer removeLastObject];
  }

  return 1;
}

- (void)getSamples:(id)samples
{
  samplesCopy = samples;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_buffer;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      samplesCopy[2](samplesCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end