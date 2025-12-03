@interface DwellBannerPresenter
- (BNPresentableContext)presentableContext;
- (_TtC17proximitycontrold20DwellBannerPresenter)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation DwellBannerPresenter

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  v3 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, self + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v3);
  selfCopy = self;
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for DwellBannerPresenter();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(DwellBannerPresenter *)&v10 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000401CC();
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DwellBannerPresenter();
  v2 = v9.receiver;
  [(DwellBannerPresenter *)&v9 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController] view];
  if (view)
  {
    v4 = view;
    [view intrinsicContentSize];
    v6 = v5;
    v8 = v7;

    [v2 setPreferredContentSize:{v6, v8}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000408E0(coordinator);
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  swift_unknownObjectRetain();
  reasonCopy = reason;
  selfCopy = self;
  sub_1000420A8(reason);
  swift_unknownObjectRelease();
}

- (_TtC17proximitycontrold20DwellBannerPresenter)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end