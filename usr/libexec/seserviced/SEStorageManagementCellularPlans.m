@interface SEStorageManagementCellularPlans
+ (void)telephonyPlansWithCompletion:(id)a3;
- (SEStorageManagementCellularPlans)initWithIdentifier:(id)a3 label:(id)a4;
@end

@implementation SEStorageManagementCellularPlans

+ (void)telephonyPlansWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[CTCellularPlanManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CE08;
  v6[3] = &unk_1004C1EC0;
  v7 = v3;
  v5 = v3;
  [v4 planItemsWithCompletion:v6];
}

- (SEStorageManagementCellularPlans)initWithIdentifier:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SEStorageManagementCellularPlans;
  v8 = [(SEStorageManagementCellularPlans *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SEStorageManagementCellularPlans *)v8 setIccid:v6];
    [(SEStorageManagementCellularPlans *)v9 setLabel:v7];
  }

  return v9;
}

@end