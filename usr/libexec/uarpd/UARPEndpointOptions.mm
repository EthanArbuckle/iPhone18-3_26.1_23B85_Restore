@interface UARPEndpointOptions
+ (id)defaultOptions;
+ (id)hostDefaultOptions;
@end

@implementation UARPEndpointOptions

+ (id)defaultOptions
{
  v2 = objc_opt_new();
  [v2 setMaxTxPayloadLength:256];
  [v2 setMaxRxPayloadLength:256];
  [v2 setPayloadWindowLength:4096];
  [v2 setProtocolVersion:7];
  [v2 setReofferFirmwareOnSync:0];
  [v2 setResponseTimeout:30000];
  [v2 setRetryLimit:5];
  [v2 setMaxTransmitsInFlight:1];
  [v2 setEndpointType:0];
  [v2 setSolicitationQueueDepth:0];
  [v2 setTxBufferOverhead:0];
  [v2 setUpgradeOnly:0];
  [v2 setNumPreallocatedBuffers:2];
  [v2 setIsHostRole:0];
  [v2 setSupportsBulkInfoQueries:1];
  [v2 setUseHostPushModel:0];

  return v2;
}

+ (id)hostDefaultOptions
{
  v2 = +[UARPEndpointOptions defaultOptions];
  [v2 setMaxTxPayloadLength:1024];
  [v2 setMaxRxPayloadLength:1024];
  [v2 setPayloadWindowLength:4096];
  [v2 setIsHostRole:1];
  [v2 setSupportsBulkInfoQueries:1];
  [v2 setUseHostPushModel:0];

  return v2;
}

@end