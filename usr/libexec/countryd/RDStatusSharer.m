@interface RDStatusSharer
- (void)shareStatusWithEstimate:(RDEstimate *)a3 completionHandler:(id)a4;
- (void)shareStatusesWithEstimates:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation RDStatusSharer

- (void)shareStatusWithEstimate:(RDEstimate *)a3 completionHandler:(id)a4
{
  v7 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10000E504();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000FB38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000FB40;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10000712C(0, 0, v10, &unk_10000FB48, v15);
}

- (void)shareStatusesWithEstimates:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10000E504();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000FAF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000FB00;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10000712C(0, 0, v10, &unk_10000FB10, v15);
}

@end