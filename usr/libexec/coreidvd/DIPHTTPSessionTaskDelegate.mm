@interface DIPHTTPSessionTaskDelegate
- (_TtC8coreidvdP33_0866DFB7931A54BC66BDAA51B582B51526DIPHTTPSessionTaskDelegate)init;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
@end

@implementation DIPHTTPSessionTaskDelegate

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v8 = sub_100007224(&qword_100849428, &qword_1006E9430);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for URLRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _Block_copy(handler);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v16 + 56))(v14, 1, 1, v15);
  sub_1005C5C10(v14, v12);
  isa = 0;
  if ((*(v16 + 48))(v12, 1, v15) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v12, v15);
  }

  v20[2](v20, isa);

  _Block_release(v20);
  sub_10000BE18(v14, &qword_100849428, &qword_1006E9430);
  (*(v16 + 8))(v19, v15);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  sessionCopy = session;
  connectivityCopy = connectivity;
  selfCopy = self;
  sub_1005C5404(connectivityCopy);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1005C5844(error);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1005C5A8C(challengeCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC8coreidvdP33_0866DFB7931A54BC66BDAA51B582B51526DIPHTTPSessionTaskDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DIPHTTPSessionTaskDelegate *)&v3 init];
}

@end