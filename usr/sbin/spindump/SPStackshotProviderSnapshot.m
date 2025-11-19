@interface SPStackshotProviderSnapshot
- (SPStackshotProviderSnapshot)initWithStackshotProvider:(id)a3 timestamp:(id)a4 numSamples:(int)a5 numSamplesAvoidedDueToAudio:(int)a6;
@end

@implementation SPStackshotProviderSnapshot

- (SPStackshotProviderSnapshot)initWithStackshotProvider:(id)a3 timestamp:(id)a4 numSamples:(int)a5 numSamplesAvoidedDueToAudio:(int)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SPStackshotProviderSnapshot;
  v13 = [(SPStackshotProviderSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stackshotProvider, a3);
    objc_storeStrong(&v14->_timestamp, a4);
    v14->_numSamples = a5;
    v14->_numSamplesAvoidedDueToAudio = a6;
  }

  return v14;
}

@end