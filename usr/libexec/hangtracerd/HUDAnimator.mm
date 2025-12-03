@interface HUDAnimator
+ (id)sharedAnimator;
- (HUDAnimator)init;
- (id)beginAnimationFromValue:(double)value toValue:(double)toValue duration:(double)duration updateBlock:(id)block completionBlock:(id)completionBlock;
- (void)displayLinkFired:(id)fired;
- (void)endAnimation:(id)animation;
- (void)updateAnimation:(id)animation toValue:(double)value duration:(double)duration;
- (void)updateDisplayLink;
@end

@implementation HUDAnimator

- (HUDAnimator)init
{
  v11.receiver = self;
  v11.super_class = HUDAnimator;
  v2 = [(HUDAnimator *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    animations = v2->_animations;
    v2->_animations = v3;

    v5 = dispatch_queue_create("com.apple.hangtracerd.HUDAnimationQueue", 0);
    animationQueue = v2->_animationQueue;
    v2->_animationQueue = v5;

    v7 = dispatch_queue_create("com.apple.hangtracerd.HUDAnimationDisplayLinkQueue", 0);
    displayLinkAccessQueue = v2->_displayLinkAccessQueue;
    v2->_displayLinkAccessQueue = v7;

    v9 = v2;
  }

  return v2;
}

+ (id)sharedAnimator
{
  if (qword_100067BD8 != -1)
  {
    sub_100034278();
  }

  v3 = qword_100067BD0;

  return v3;
}

- (id)beginAnimationFromValue:(double)value toValue:(double)toValue duration:(double)duration updateBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v14 = +[NSUUID UUID];
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000264C8;
  block[3] = &unk_100055EB0;
  valueCopy = value;
  toValueCopy = toValue;
  durationCopy = duration;
  v24 = blockCopy;
  v25 = completionBlockCopy;
  v16 = v14;
  v22 = v16;
  selfCopy = self;
  v17 = completionBlockCopy;
  v18 = blockCopy;
  dispatch_sync(displayLinkAccessQueue, block);
  [(HUDAnimator *)self updateDisplayLink];
  v19 = v16;

  return v16;
}

- (void)updateAnimation:(id)animation toValue:(double)value duration:(double)duration
{
  animationCopy = animation;
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002663C;
  v14 = &unk_100055F00;
  selfCopy = self;
  v16 = animationCopy;
  valueCopy = value;
  durationCopy = duration;
  v10 = animationCopy;
  dispatch_sync(displayLinkAccessQueue, &v11);
  [(HUDAnimator *)self updateDisplayLink:v11];
}

- (void)endAnimation:(id)animation
{
  animationCopy = animation;
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000268B0;
  v7[3] = &unk_100054C38;
  v7[4] = self;
  v8 = animationCopy;
  v6 = animationCopy;
  dispatch_sync(displayLinkAccessQueue, v7);
}

- (void)updateDisplayLink
{
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026AF8;
  block[3] = &unk_100054D38;
  block[4] = self;
  dispatch_sync(displayLinkAccessQueue, block);
}

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100026EE0;
  v18[4] = sub_100026EF0;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100026EE0;
  v16[4] = sub_100026EF0;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = CACurrentMediaTime();
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026EF8;
  block[3] = &unk_100055F88;
  block[4] = self;
  block[5] = v18;
  *&block[8] = v5;
  block[6] = v16;
  block[7] = &v12;
  dispatch_sync(displayLinkAccessQueue, block);
  animationQueue = self->_animationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000270AC;
  v10[3] = &unk_100055FB0;
  *&v10[6] = v5;
  v10[4] = v18;
  v10[5] = v16;
  dispatch_sync(animationQueue, v10);
  if (*(v13 + 24) == 1)
  {
    v8 = self->_displayLinkAccessQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000272C0;
    v9[3] = &unk_100054D38;
    v9[4] = self;
    dispatch_sync(v8, v9);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
}

@end