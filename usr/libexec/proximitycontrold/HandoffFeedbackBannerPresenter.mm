@interface HandoffFeedbackBannerPresenter
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (UIEdgeInsets)bannerContentOutsets;
- (_TtC17proximitycontrold30HandoffFeedbackBannerPresenter)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentableDidAppearAsBanner:;
- (void)presentableWillAppearAsBanner:;
- (void)userInteractionDidEndForBannerForPresentable:;
- (void)userInteractionWillBeginForBannerForPresentable:;
- (void)viewDidLoad;
@end

@implementation HandoffFeedbackBannerPresenter

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HandoffFeedbackBannerPresenter();
  v2 = v5.receiver;
  [(HandoffFeedbackBannerPresenter *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview:*&v2[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView]];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [*(self + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView) systemLayoutSizeFittingSize:{a3.width, a3.height, a4.width, a4.height}];
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  [*(self + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView) shadowOutsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtC17proximitycontrold30HandoffFeedbackBannerPresenter)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentableDidAppearAsBanner:
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033B030);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD00000000000001FLL, 0x8000000100298670, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

- (void)presentableWillAppearAsBanner:
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033B030);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD000000000000020, 0x8000000100298610, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

- (void)userInteractionDidEndForBannerForPresentable:
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033B030);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD000000000000024, 0x8000000100298580, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033B030);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD000000000000027, 0x8000000100298550, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

@end