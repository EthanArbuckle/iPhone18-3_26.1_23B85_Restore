@interface PresentmentSessionProxy
- (_TtC7idcredd23PresentmentSessionProxy)init;
- (void)buildCredentialResponseFor:(DCPresentmentSelection *)a3 completionHandler:(id)a4;
- (void)buildErrorResponseWith:(unint64_t)a3 completionHandler:(id)a4;
- (void)buildGenericDataResponse:(NSData *)a3 completionHandler:(id)a4;
- (void)buildResponseFor:(DCPresentmentSelection *)a3 completionHandler:(id)a4;
- (void)configureWithPartitions:(NSArray *)a3 presentmentType:(unint64_t)a4 options:(DCPresentmentSessionOptions *)a5 completionHandler:(id)a6;
- (void)generateTransportKeyFor:(unint64_t)a3 completionHandler:(id)a4;
- (void)interpretCredentialRequest:(_TtC10CoreIDCred31XPCCredentialPresentmentRequest *)a3 completionHandler:(id)a4;
- (void)interpretGenericDataRequest:(NSData *)a3 completionHandler:(id)a4;
- (void)interpretRequest:(DCPresentmentRequest *)a3 completionHandler:(id)a4;
@end

@implementation PresentmentSessionProxy

- (void)configureWithPartitions:(NSArray *)a3 presentmentType:(unint64_t)a4 options:(DCPresentmentSessionOptions *)a5 completionHandler:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001ACBB0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001ACBB8;
  v19[5] = v18;
  v20 = a3;
  v21 = a5;
  v22 = self;
  sub_100093C54(0, 0, v14, &unk_1001ACBC0, v19);
}

- (void)generateTransportKeyFor:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB88;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACB90;
  v15[5] = v14;
  v16 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACB98, v15);
}

- (void)interpretRequest:(DCPresentmentRequest *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACB70;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACB78, v15);
}

- (void)interpretCredentialRequest:(_TtC10CoreIDCred31XPCCredentialPresentmentRequest *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACB50;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACB58, v15);
}

- (void)buildResponseFor:(DCPresentmentSelection *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB28;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACB30;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACB38, v15);
}

- (void)buildCredentialResponseFor:(DCPresentmentSelection *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACB10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACB18, v15);
}

- (void)buildErrorResponseWith:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACAE8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACAF0;
  v15[5] = v14;
  v16 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACAF8, v15);
}

- (void)interpretGenericDataRequest:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACAC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001ACAD0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001ACAD8, v15);
}

- (void)buildGenericDataResponse:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACA80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC130;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC570, v15);
}

- (_TtC7idcredd23PresentmentSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end