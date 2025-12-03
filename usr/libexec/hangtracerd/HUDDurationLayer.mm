@interface HUDDurationLayer
- (HUDDurationLayer)init;
- (void)setHangDuration:(double)duration animated:(BOOL)animated;
@end

@implementation HUDDurationLayer

- (HUDDurationLayer)init
{
  v7.receiver = self;
  v7.super_class = HUDDurationLayer;
  v2 = [(HUDDurationLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    currentAnimation = v2->_currentAnimation;
    v2->_currentAnimation = 0;

    v3->_updateInterval = 0.05;
    v5 = v3;
  }

  return v3;
}

- (void)setHangDuration:(double)duration animated:(BOOL)animated
{
  hangDuration = self->_hangDuration;
  if (hangDuration == duration)
  {
    v6 = sub_100003824();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100032DDC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (animated)
  {
    if (!self->_currentAnimation)
    {
      v15 = sub_100018F3C(hangDuration);
      [(HUDDurationLayer *)self setString:v15];

      v16 = sub_100003824();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100032CBC(self, v16, duration);
      }

      v17 = +[HUDAnimator sharedAnimator];
      v18 = self->_hangDuration;
      updateInterval = self->_updateInterval;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100019320;
      v42[3] = &unk_100055A78;
      v42[4] = self;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10001941C;
      v41[3] = &unk_100055AA0;
      v41[4] = self;
      v20 = [v17 beginAnimationFromValue:v42 toValue:v41 duration:v18 updateBlock:duration completionBlock:updateInterval];
      currentAnimation = self->_currentAnimation;
      self->_currentAnimation = v20;
    }

    self->_hangDuration = duration;
    v22 = sub_100003824();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100032D6C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v6 = +[HUDAnimator sharedAnimator];
    [v6 updateAnimation:self->_currentAnimation toValue:duration duration:self->_updateInterval];
  }

  else
  {
    self->_hangDuration = duration;
    v30 = self->_currentAnimation;
    if (v30)
    {
      self->_currentAnimation = 0;
      v31 = v30;

      v32 = +[HUDAnimator sharedAnimator];
      [v32 endAnimation:v31];

      v33 = sub_100003824();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_100032C4C(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    [CATransaction setDisableActions:1];
    v6 = sub_100018F3C(duration);
    [(HUDDurationLayer *)self setString:v6];
  }
}

@end