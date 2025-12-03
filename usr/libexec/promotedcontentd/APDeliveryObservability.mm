@interface APDeliveryObservability
- (APDeliveryObservability)initWithTransmitter:(id)transmitter;
- (void)recordFailure:(int64_t)failure;
- (void)recordSuccess;
@end

@implementation APDeliveryObservability

- (APDeliveryObservability)initWithTransmitter:(id)transmitter
{
  transmitterCopy = transmitter;
  v9.receiver = self;
  v9.super_class = APDeliveryObservability;
  v6 = [(APDeliveryObservability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transmitter, transmitter);
    v7->_successCount = 0;
    v7->_backoffIndex = 0;
  }

  return v7;
}

- (void)recordSuccess
{
  [(APDeliveryObservability *)self setSuccessCount:[(APDeliveryObservability *)self successCount]+ 1];

  [(APDeliveryObservability *)self setBackoffIndex:0];
}

- (void)recordFailure:(int64_t)failure
{
  transmitter = [(APDeliveryObservability *)self transmitter];
  [transmitter sendDeliveryEventWithError:failure successCount:-[APDeliveryObservability successCount](self backoffIndex:{"successCount"), -[APDeliveryObservability backoffIndex](self, "backoffIndex")}];

  [(APDeliveryObservability *)self setSuccessCount:0];
  v6 = [(APDeliveryObservability *)self backoffIndex]+ 1;

  [(APDeliveryObservability *)self setBackoffIndex:v6];
}

@end