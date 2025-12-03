@interface HUDLineAnimationDelegate
- (HUDLine)hudLine;
- (void)animationDidStart:(id)start;
@end

@implementation HUDLineAnimationDelegate

- (void)animationDidStart:(id)start
{
  hudLine = [(HUDLineAnimationDelegate *)self hudLine];
  lineDelegate = [hudLine lineDelegate];
  [lineDelegate animationDidStartOnLine:hudLine];
}

- (HUDLine)hudLine
{
  WeakRetained = objc_loadWeakRetained(&self->_hudLine);

  return WeakRetained;
}

@end