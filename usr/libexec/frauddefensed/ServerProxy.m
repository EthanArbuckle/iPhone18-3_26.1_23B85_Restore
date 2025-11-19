@interface ServerProxy
- (void)debugUIManagerPresentPillBanner:(NSString *)a3 subtitle:(NSString *)a4 completionHandler:(id)a5;
- (void)reportManagerReport:(NSString *)a3 report:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)spamDecisionManagerInference:(NSString *)a3 sender:(NSString *)a4 messageBody:(NSString *)a5 receiverISOCountryCode:(NSString *)a6 attachments:(NSArray *)a7 trustIndicator:(NSString *)a8 messageType:(NSString *)a9 inferenceType:(NSString *)a10 completionHandler:(id)a11;
- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)a3;
- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)a3;
@end

@implementation ServerProxy

- (void)reportManagerReport:(NSString *)a3 report:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100091270;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100091278;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;

  sub_10002C764(0, 0, v13, &unk_100091280, v18);
}

- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)a3
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100091240;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100091248;
  v14[5] = v13;

  sub_10002C764(0, 0, v9, &unk_100091250, v14);
}

- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)a3
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100091210;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100091218;
  v14[5] = v13;

  sub_10002C764(0, 0, v9, &unk_100091220, v14);
}

- (void)spamDecisionManagerInference:(NSString *)a3 sender:(NSString *)a4 messageBody:(NSString *)a5 receiverISOCountryCode:(NSString *)a6 attachments:(NSArray *)a7 trustIndicator:(NSString *)a8 messageType:(NSString *)a9 inferenceType:(NSString *)a10 completionHandler:(id)a11
{
  v36 = self;
  v37 = a8;
  v16 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v36 - v19;
  v21 = _Block_copy(a11);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v23 = v36;
  v24 = v37;
  v22[6] = a7;
  v22[7] = v24;
  v22[8] = a9;
  v22[9] = a10;
  v22[10] = v21;
  v22[11] = v23;
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_1000911E8;
  v26[5] = v22;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_1000911F0;
  v27[5] = v26;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v37;
  v34 = a9;
  v35 = a10;

  sub_10002C764(0, 0, v20, &unk_1000911F8, v27);
}

- (void)debugUIManagerPresentPillBanner:(NSString *)a3 subtitle:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100091198;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000911A8;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;

  sub_10002C764(0, 0, v13, &unk_1000911B8, v18);
}

@end