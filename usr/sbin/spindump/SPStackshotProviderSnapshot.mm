@interface SPStackshotProviderSnapshot
- (SPStackshotProviderSnapshot)initWithStackshotProvider:(id)provider timestamp:(id)timestamp numSamples:(int)samples numSamplesAvoidedDueToAudio:(int)audio;
@end

@implementation SPStackshotProviderSnapshot

- (SPStackshotProviderSnapshot)initWithStackshotProvider:(id)provider timestamp:(id)timestamp numSamples:(int)samples numSamplesAvoidedDueToAudio:(int)audio
{
  providerCopy = provider;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = SPStackshotProviderSnapshot;
  v13 = [(SPStackshotProviderSnapshot *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stackshotProvider, provider);
    objc_storeStrong(&v14->_timestamp, timestamp);
    v14->_numSamples = samples;
    v14->_numSamplesAvoidedDueToAudio = audio;
  }

  return v14;
}

@end