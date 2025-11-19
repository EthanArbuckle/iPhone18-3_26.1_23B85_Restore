@interface tmd86fe6187ee41b8649354ac4ec3a992b
- (void)updateAllThermalLoad:(BOOL)a3;
@end

@implementation tmd86fe6187ee41b8649354ac4ec3a992b

- (void)updateAllThermalLoad:(BOOL)a3
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB82C;
  v6 = qword_1000AB834;
  v7 = [(CommonProduct *)self findComponent:18];
  v8 = [(CommonProduct *)self dieTempMaxAverage]/ 100.0;
  *&v8 = v8;
  [v7 calculateControlEffort:v8];
  sub_10000533C(31, (v4 * 0.2304 + 473.4 + v6 * 0.6023));
  sub_10000533C(32, (v4 * 0.689 + -214.0 + v5 * 0.373));
  v9 = dword_1000AB8A4;
  v10 = [(CommonProduct *)self findComponent:19];
  v11 = v9 / 100.0;
  *&v12 = v11;
  [v10 calculateControlEffort:v12];
  v13 = [(CommonProduct *)self findComponent:20];
  *&v14 = v11;

  [v13 calculateControlEffort:v14];
}

@end