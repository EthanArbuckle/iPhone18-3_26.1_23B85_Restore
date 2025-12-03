@interface RMFacePoseCaptureContext
- (void)setDetectedFacesTimestamp:(id *)timestamp;
@end

@implementation RMFacePoseCaptureContext

- (void)setDetectedFacesTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_detectedFacesTimestamp.epoch = timestamp->var3;
  *&self->_detectedFacesTimestamp.value = v3;
}

@end