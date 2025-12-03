@interface HintViewControllerBanner
- (UIEdgeInsets)bannerContentOutsets;
- (void)pillTapped;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)update;
- (void)viewDidLoad;
@end

@implementation HintViewControllerBanner

- (void)update
{
  selfCopy = self;
  sub_10010DBD0();
}

- (void)pillTapped
{
  selfCopy = self;
  sub_10010DD74();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10010E060();
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000CBE90(banner);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  swift_unknownObjectRelease();
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
  sub_1000CBA70(banner, reason);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  swift_unknownObjectRelease();
}

- (UIEdgeInsets)bannerContentOutsets
{
  selfCopy = self;
  v3 = sub_10010E530();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

@end