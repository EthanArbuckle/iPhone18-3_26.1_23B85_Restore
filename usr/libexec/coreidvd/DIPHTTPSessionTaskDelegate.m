@interface DIPHTTPSessionTaskDelegate
- (_TtC8coreidvdP33_0866DFB7931A54BC66BDAA51B582B51526DIPHTTPSessionTaskDelegate)init;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
@end

@implementation DIPHTTPSessionTaskDelegate

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
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
  v20 = _Block_copy(a7);
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

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1005C5404(v7);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1005C5844(a4);
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1005C5A8C(v10, v8);
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