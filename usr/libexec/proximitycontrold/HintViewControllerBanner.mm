@interface HintViewControllerBanner
- (UIEdgeInsets)bannerContentOutsets;
- (void)pillTapped;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)update;
- (void)viewDidLoad;
@end

@implementation HintViewControllerBanner

- (void)update
{
  v2 = self;
  sub_10010DBD0();
}

- (void)pillTapped
{
  v2 = self;
  sub_10010DD74();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10010E060();
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000CBE90(a3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  swift_unknownObjectRelease();
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1000CBA70(a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  swift_unknownObjectRelease();
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = self;
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