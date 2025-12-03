@interface GameSaveXPCClient
- (id)getSyncedDirectoryWithRequest:(id)request completion:(id)completion;
- (id)openICloudDriveSettingsPage;
@end

@implementation GameSaveXPCClient

- (id)getSyncedDirectoryWithRequest:(id)request completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  requestCopy = request;

  v8 = sub_100015888(requestCopy, sub_100016D28, v6);

  return v8;
}

- (id)openICloudDriveSettingsPage
{
  v0 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100001F70(v7, static Logger.daemon);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Opening iCloud Drive Settings Page", v10, 2u);
  }

  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    sub_100016C80(v6, v4);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v4, 1, v13) != 1)
    {
      URL._bridgeToObjectiveC()(v15);
      v16 = v17;
      (*(v14 + 8))(v4, v13);
    }

    sub_1000108BC(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 openSensitiveURL:v16 withOptions:isa];

    return sub_100014CFC(v6, &qword_10003A430, &unk_10002B930);
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end