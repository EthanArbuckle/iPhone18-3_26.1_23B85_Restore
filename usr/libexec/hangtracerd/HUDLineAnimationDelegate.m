@interface HUDLineAnimationDelegate
- (HUDLine)hudLine;
- (void)animationDidStart:(id)a3;
@end

@implementation HUDLineAnimationDelegate

- (void)animationDidStart:(id)a3
{
  v4 = [(HUDLineAnimationDelegate *)self hudLine];
  v3 = [v4 lineDelegate];
  [v3 animationDidStartOnLine:v4];
}

- (HUDLine)hudLine
{
  WeakRetained = objc_loadWeakRetained(&self->_hudLine);

  return WeakRetained;
}

@end