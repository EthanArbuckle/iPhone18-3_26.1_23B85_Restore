@interface APItunesAppMetaData
+ (id)loadWithBundleId:(id)a3 error:(id *)a4;
- (APItunesAppMetaData)init;
@end

@implementation APItunesAppMetaData

+ (id)loadWithBundleId:(id)a3 error:(id *)a4
{
  v4 = sub_100398F58();
  v6 = sub_100264B8C(v4, v5);

  return v6;
}

- (APItunesAppMetaData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end