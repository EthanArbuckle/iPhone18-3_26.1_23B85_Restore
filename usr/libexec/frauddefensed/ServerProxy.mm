@interface ServerProxy
- (void)debugUIManagerPresentPillBanner:(NSString *)banner subtitle:(NSString *)subtitle completionHandler:(id)handler;
- (void)reportManagerReport:(NSString *)report report:(NSDictionary *)a4 completionHandler:(id)handler;
- (void)spamDecisionManagerInference:(NSString *)inference sender:(NSString *)sender messageBody:(NSString *)body receiverISOCountryCode:(NSString *)code attachments:(NSArray *)attachments trustIndicator:(NSString *)indicator messageType:(NSString *)type inferenceType:(NSString *)self0 completionHandler:(id)self1;
- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)handler;
- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)handler;
@end

@implementation ServerProxy

- (void)reportManagerReport:(NSString *)report report:(NSDictionary *)a4 completionHandler:(id)handler
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = report;
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
  reportCopy = report;
  v20 = a4;

  sub_10002C764(0, 0, v13, &unk_100091280, v18);
}

- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)handler
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
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

- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)handler
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
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

- (void)spamDecisionManagerInference:(NSString *)inference sender:(NSString *)sender messageBody:(NSString *)body receiverISOCountryCode:(NSString *)code attachments:(NSArray *)attachments trustIndicator:(NSString *)indicator messageType:(NSString *)type inferenceType:(NSString *)self0 completionHandler:(id)self1
{
  selfCopy = self;
  indicatorCopy = indicator;
  v16 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &selfCopy - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  v22[2] = inference;
  v22[3] = sender;
  v22[4] = body;
  v22[5] = code;
  v23 = selfCopy;
  v24 = indicatorCopy;
  v22[6] = attachments;
  v22[7] = v24;
  v22[8] = type;
  v22[9] = inferenceType;
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
  inferenceCopy = inference;
  senderCopy = sender;
  bodyCopy = body;
  codeCopy = code;
  attachmentsCopy = attachments;
  v33 = indicatorCopy;
  typeCopy = type;
  inferenceTypeCopy = inferenceType;

  sub_10002C764(0, 0, v20, &unk_1000911F8, v27);
}

- (void)debugUIManagerPresentPillBanner:(NSString *)banner subtitle:(NSString *)subtitle completionHandler:(id)handler
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = banner;
  v15[3] = subtitle;
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
  bannerCopy = banner;
  subtitleCopy = subtitle;

  sub_10002C764(0, 0, v13, &unk_1000911B8, v18);
}

@end