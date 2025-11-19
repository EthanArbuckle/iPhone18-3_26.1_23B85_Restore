@interface RMFacePoseCaptureContext
- (void)setDetectedFacesTimestamp:(id *)a3;
@end

@implementation RMFacePoseCaptureContext

- (void)setDetectedFacesTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_detectedFacesTimestamp.epoch = a3->var3;
  *&self->_detectedFacesTimestamp.value = v3;
}

@end