@interface HintViewControllerDynamicIsland
- (BNPresentableContext)presentableContext;
- (NSString)description;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (_TtC17proximitycontrold31HintViewControllerDynamicIsland)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTap;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:;
@end

@implementation HintViewControllerDynamicIsland

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)requesterIdentifier
{
  static String._fromUTF8Repairing(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)requestIdentifier
{
  v2 = *(*(self + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel) + 16);
  selfCopy = self;
  UUID.uuidString.getter();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_100205FB4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100206988();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_100206D28(window, disappear);
}

- (void)didTap
{
  selfCopy = self;
  sub_100207130();
}

- (_TtC17proximitycontrold31HintViewControllerDynamicIsland)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:
{
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034D760);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A5B00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000903C(v3);
  }
}

@end