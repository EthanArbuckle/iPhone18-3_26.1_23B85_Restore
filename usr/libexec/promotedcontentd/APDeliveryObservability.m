@interface APDeliveryObservability
- (APDeliveryObservability)initWithTransmitter:(id)a3;
- (void)recordFailure:(int64_t)a3;
- (void)recordSuccess;
@end

@implementation APDeliveryObservability

- (APDeliveryObservability)initWithTransmitter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APDeliveryObservability;
  v6 = [(APDeliveryObservability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transmitter, a3);
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

- (void)recordFailure:(int64_t)a3
{
  v5 = [(APDeliveryObservability *)self transmitter];
  [v5 sendDeliveryEventWithError:a3 successCount:-[APDeliveryObservability successCount](self backoffIndex:{"successCount"), -[APDeliveryObservability backoffIndex](self, "backoffIndex")}];

  [(APDeliveryObservability *)self setSuccessCount:0];
  v6 = [(APDeliveryObservability *)self backoffIndex]+ 1;

  [(APDeliveryObservability *)self setBackoffIndex:v6];
}

@end