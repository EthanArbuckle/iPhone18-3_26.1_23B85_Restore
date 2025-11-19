@interface MOEventEntityInvite
- (CLLocation)location;
- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5 location:(id)a6 placeName:(id)a7 identifier:(id)a8 appBundle:(id)a9 organizers:(id)a10 attendees:(id)a11;
- (void)setLocation:(id)a3;
@end

@implementation MOEventEntityInvite

- (CLLocation)location
{
  v3 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocation:(id)a3
{
  v5 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5 location:(id)a6 placeName:(id)a7 identifier:(id)a8 appBundle:(id)a9 organizers:(id)a10 attendees:(id)a11
{
  v62 = self;
  v63 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v58 - v23;
  if (a3)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v26;
    v61 = v25;
    if (a4)
    {
LABEL_3:
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
      goto LABEL_6;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
LABEL_6:
  if (a5)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = type metadata accessor for Date();
    v30 = *(*(v29 - 8) + 56);
    v31 = v63;
    v32 = a7;
    v33 = a8;
    v34 = a9;
    v35 = a10;
    v36 = a11;
    v30(v21, 0, 1, v29);
    if (a7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = type metadata accessor for Date();
    (*(*(v47 - 8) + 56))(v21, 1, 1, v47);
    v48 = v63;
    v49 = a7;
    v50 = a8;
    v51 = a9;
    v52 = a10;
    v53 = a11;
    if (a7)
    {
LABEL_8:
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (a8)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v59 = 0;
  v38 = 0;
  if (a8)
  {
LABEL_9:
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (a9)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v39 = 0;
  v41 = 0;
  if (a9)
  {
LABEL_10:
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (a10)
    {
      goto LABEL_11;
    }

LABEL_17:
    v45 = 0;
    if (a11)
    {
      goto LABEL_12;
    }

LABEL_18:
    v46 = 0;
    goto LABEL_19;
  }

LABEL_16:
  v42 = 0;
  v44 = 0;
  if (!a10)
  {
    goto LABEL_17;
  }

LABEL_11:
  type metadata accessor for MOEventEntityInvitePerson();
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a11)
  {
    goto LABEL_18;
  }

LABEL_12:
  type metadata accessor for MOEventEntityInvitePerson();
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  v54 = v21;
  v55 = v63;
  v56 = specialized MOEventEntityInvite.init(title:startDate:endDate:location:placeName:identifier:appBundle:organizers:attendees:)(v61, v60, v24, v54, v63, v59, v38, v39, v41, v42, v44, v45, v46);

  return v56;
}

@end