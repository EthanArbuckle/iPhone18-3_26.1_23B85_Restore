@interface SDSuggestionCreationUtilities
+ (void)retrieveSuggestionForRecipients:(NSArray *)recipients inActivityType:(NSString *)type completionHandler:(id)handler;
- (_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities)init;
@end

@implementation SDSuggestionCreationUtilities

+ (void)retrieveSuggestionForRecipients:(NSArray *)recipients inActivityType:(NSString *)type completionHandler:(id)handler
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = recipients;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1007FB9E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10080F2C0;
  v17[5] = v16;
  recipientsCopy = recipients;
  typeCopy = type;
  sub_1006E2B30(0, 0, v12, &unk_1007FB9F0, v17);
}

- (_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SDSuggestionCreationUtilities();
  return [(SDSuggestionCreationUtilities *)&v3 init];
}

@end