@interface DwellBannerPresenter
- (BNPresentableContext)presentableContext;
- (_TtC17proximitycontrold20DwellBannerPresenter)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
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
  v8 = self;
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for DwellBannerPresenter();
  v10.receiver = v8;
  v10.super_class = v9;
  [(DwellBannerPresenter *)&v10 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000401CC();
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DwellBannerPresenter();
  v2 = v9.receiver;
  [(DwellBannerPresenter *)&v9 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController] view];
  if (v3)
  {
    v4 = v3;
    [v3 intrinsicContentSize];
    v6 = v5;
    v8 = v7;

    [v2 setPreferredContentSize:{v6, v8}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000408E0(a3);
  swift_unknownObjectRelease();
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1000420A8(a4);
  swift_unknownObjectRelease();
}

- (_TtC17proximitycontrold20DwellBannerPresenter)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end