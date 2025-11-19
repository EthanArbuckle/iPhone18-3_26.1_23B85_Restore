@interface NSFileManager
+ (id)sharingContainerURL;
@end

@implementation NSFileManager

+ (id)sharingContainerURL
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  sub_1002EFD6C(&v13 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v9 = v11;
  }

  return v9;
}

@end