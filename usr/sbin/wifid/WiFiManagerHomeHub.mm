@interface WiFiManagerHomeHub
- (WiFiManagerHomeHub)initWithManager:(__WiFiManager *)a3 queue:(id)a4 callback:(void *)a5;
- (void)decrementActiveEndpointCount;
- (void)incrementActiveEndpointCount;
@end

@implementation WiFiManagerHomeHub

- (WiFiManagerHomeHub)initWithManager:(__WiFiManager *)a3 queue:(id)a4 callback:(void *)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = WiFiManagerHomeHub;
  v10 = [(WiFiManagerHomeHub *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_manager = a3;
    objc_storeStrong(&v10->_queue, a4);
    v11->_stateUpdatedCallback = a5;
    v11->_numberOfActiveEndpoints = 0;
  }

  return v11;
}

- (void)incrementActiveEndpointCount
{
  ++self->_numberOfActiveEndpoints;
  if ([(WiFiManagerHomeHub *)self numberOfActiveEndpoints]== 1)
  {
    v4 = [(WiFiManagerHomeHub *)self stateUpdatedCallback];
    v3 = [(WiFiManagerHomeHub *)self manager];

    v4(v3);
  }
}

- (void)decrementActiveEndpointCount
{
  --self->_numberOfActiveEndpoints;
  if (![(WiFiManagerHomeHub *)self numberOfActiveEndpoints])
  {
    v4 = [(WiFiManagerHomeHub *)self stateUpdatedCallback];
    v3 = [(WiFiManagerHomeHub *)self manager];

    v4(v3);
  }
}

@end