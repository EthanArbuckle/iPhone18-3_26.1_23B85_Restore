@interface WiFiManagerHomeHub
- (WiFiManagerHomeHub)initWithManager:(__WiFiManager *)manager queue:(id)queue callback:(void *)callback;
- (void)decrementActiveEndpointCount;
- (void)incrementActiveEndpointCount;
@end

@implementation WiFiManagerHomeHub

- (WiFiManagerHomeHub)initWithManager:(__WiFiManager *)manager queue:(id)queue callback:(void *)callback
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = WiFiManagerHomeHub;
  v10 = [(WiFiManagerHomeHub *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_manager = manager;
    objc_storeStrong(&v10->_queue, queue);
    v11->_stateUpdatedCallback = callback;
    v11->_numberOfActiveEndpoints = 0;
  }

  return v11;
}

- (void)incrementActiveEndpointCount
{
  ++self->_numberOfActiveEndpoints;
  if ([(WiFiManagerHomeHub *)self numberOfActiveEndpoints]== 1)
  {
    stateUpdatedCallback = [(WiFiManagerHomeHub *)self stateUpdatedCallback];
    manager = [(WiFiManagerHomeHub *)self manager];

    stateUpdatedCallback(manager);
  }
}

- (void)decrementActiveEndpointCount
{
  --self->_numberOfActiveEndpoints;
  if (![(WiFiManagerHomeHub *)self numberOfActiveEndpoints])
  {
    stateUpdatedCallback = [(WiFiManagerHomeHub *)self stateUpdatedCallback];
    manager = [(WiFiManagerHomeHub *)self manager];

    stateUpdatedCallback(manager);
  }
}

@end