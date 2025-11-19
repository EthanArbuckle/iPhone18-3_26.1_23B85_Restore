unint64_t sub_1002388F4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (__OFADD__(a2, a3))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((a2 + a3) > 16)
  {
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a3)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v3 < 0x40)
      {
        v4 |= 1 << v3;
      }

      if (v5 == a3)
      {
        goto LABEL_13;
      }

      ++v3;
      if (v5 >= a3)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  v4 = 0;
LABEL_13:
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((result & ~v4) != 0)
  {
LABEL_17:
    sub_10000B02C();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if (a2 < 0)
  {
LABEL_28:
    if (a2 != -64)
    {
      result >>= -a2;
      if (result >> 16)
      {
        goto LABEL_30;
      }

      return result;
    }

    return 0;
  }

  if (a2 == 64)
  {
    return 0;
  }

  result <<= a2;
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result >> 16)
  {
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_100238A18(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (__OFADD__(a2, a3))
  {
    goto LABEL_33;
  }

  if ((a2 + a3) > 8)
  {
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_32;
      }

      if (v3 < 0x40)
      {
        v4 |= 1 << v3;
      }

      if (v5 == a3)
      {
        break;
      }

      ++v3;
      if (v5 >= a3)
      {
        __break(1u);
        break;
      }
    }

    if ((result & ~v4) == 0)
    {
      if (a2 <= -65)
      {
        goto LABEL_23;
      }

      if (a2 > 64)
      {
        return 0;
      }

      if (a2 < 0)
      {
        goto LABEL_35;
      }

      if (a2 == 64)
      {
        return 0;
      }

      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (result)
  {
LABEL_19:
    sub_10000B02C();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    swift_willThrow();
    return v7;
  }

  if (a2 < -64)
  {
    result = 0;
    goto LABEL_23;
  }

  if (a2 > 64)
  {
    return 0;
  }

  v7 = 0;
  result = 0;
  if (a2 < 0)
  {
    if (a2 != -64)
    {
      goto LABEL_38;
    }

    return v7;
  }

  if (a2 == 64)
  {
    return v7;
  }

LABEL_29:
  v7 = result << a2;
  if (((result << a2) & 0x8000000000000000) == 0)
  {
    while (v7 > 0xFF)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      if (a2 == -64)
      {
LABEL_23:
        v7 = result >> 63;
        if (result >> 63 < 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
LABEL_38:
        v7 = result >> -a2;
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }
    }

    return v7;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_100238B78(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (__OFADD__(a2, a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 + a3) > 16)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a3)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v3 < 0x40)
      {
        v4 |= 1 << v3;
      }

      if (v5 == a3)
      {
        goto LABEL_13;
      }

      ++v3;
      if (v5 >= a3)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  LOBYTE(v4) = 0;
LABEL_13:
  v3 = a1;
  if ((~v4 & a1) != 0)
  {
LABEL_16:
    sub_10000B02C();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if (a2 < 0)
  {
    goto LABEL_27;
  }

  if (a2 == 64)
  {
    return 0;
  }

  result = a1 << a2;
  if (((v3 << a2) & 0x8000000000000000) == 0)
  {
    if (!(result >> 16))
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  if (a2 == -64)
  {
    return 0;
  }

  else
  {
    return v3 >> -a2;
  }
}

unint64_t sub_100238C98(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (__OFADD__(a2, a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 + a3) > 8)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a3)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v3 < 0x40)
      {
        v4 |= 1 << v3;
      }

      if (v5 == a3)
      {
        goto LABEL_13;
      }

      ++v3;
      if (v5 >= a3)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  LOBYTE(v4) = 0;
LABEL_13:
  v3 = a1;
  if ((~v4 & a1) != 0)
  {
LABEL_16:
    sub_10000B02C();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if (a2 < 0)
  {
    goto LABEL_27;
  }

  if (a2 == 64)
  {
    return 0;
  }

  result = a1 << a2;
  if (((v3 << a2) & 0x8000000000000000) == 0)
  {
    if (result <= 0xFF)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  if (a2 == -64)
  {
    return 0;
  }

  else
  {
    return v3 >> -a2;
  }
}

CoreP2P::NANAttribute::Availability __swiftcall NANAttribute.Availability.init(sequenceID:control:availabilityEntries:)(Swift::UInt8 sequenceID, CoreP2P::NANAttribute::Availability::Control control, Swift::OpaquePointer availabilityEntries)
{
  v3 = sequenceID | (*&control << 16);
  result.availabilityEntries = availabilityEntries;
  result.sequenceID = v3;
  result.control = *(&v3 + 2);
  return result;
}

uint64_t *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor()
{
  if (qword_10058AB40 != -1)
  {
    swift_once();
  }

  return &static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
}

uint64_t *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor()
{
  if (qword_10058AB48 != -1)
  {
    swift_once();
  }

  return &static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
}

uint64_t Array<A>.retrieve(attribute:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NANAttribute(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    while (1)
    {
      sub_1002774DC(v12, v10, type metadata accessor for NANAttribute);
      if (byte_1004ABDA2[NANAttribute.attributeType.getter()] == byte_1004ABDA2[a1])
      {
        break;
      }

      sub_100277544(v10, type metadata accessor for NANAttribute);
      v12 += v13;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    sub_100262DC8(v10, a3, type metadata accessor for NANAttribute);
    v14 = 0;
  }

  else
  {
LABEL_5:
    v14 = 1;
  }

  return (*(v7 + 56))(a3, v14, 1, v6);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(cipherVersion:identityKey:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 26898256;
  v4 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  sub_100262DC8(a1, a2 + *(v4 + 24), type metadata accessor for NANIdentityKey);
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(keyID:iGTK:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 10121040;
  v11 = a3 + *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);
  (*(v7 + 16))(v10, a2, v6);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v12 = *(v7 + 8);
  v12(a2, v6);
  v12(v10, v6);
  v13 = v15[1];
  *v11 = a1;
  *(v11 + 8) = xmmword_10049F6E0;
  *(v11 + 24) = v13;
  type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
  return swift_storeEnumTagMultiPayload();
}

__n128 NANAttribute.SharedKeyDescriptor.init(publishID:keyDescriptorElements:keyDescriptorEncyptionKey:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v35 = a4;
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[2];
  v66 = a3;
  v11(v10, a3, v6);
  v12 = type metadata accessor for __DataStorage();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = __DataStorage.init(length:)() | 0x4000000000000000;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  v37 = __DataStorage.init(length:)() | 0x4000000000000000;
  v18 = *(v12 + 48);
  v19 = *(v12 + 52);
  swift_allocObject();
  v20 = __DataStorage.init(length:)() | 0x4000000000000000;
  v21 = v38;
  v22 = sub_100275C0C(a2, v10);
  v38 = v21;
  if (v21)
  {
    v24 = v7[1];
    v24(v10, v6);

    sub_1000124C8(0x2000000000, v15);
    sub_1000124C8(0x1000000000, v37);
    sub_1000124C8(0x1000000000, v20);
    v24(v66, v6);
  }

  else
  {
    v26 = v22;
    v27 = v23;
    v33 = v15;
    v34 = v20;
    v28 = v7[1];
    v28(v10, v6);

    LOBYTE(v40[0]) = 1;
    *(v40 + 2) = 4232;
    *(v40 + 8) = xmmword_1004881D0;
    *(&v40[1] + 1) = v33;
    *&v41 = 0x1000000000;
    *(&v41 + 1) = v37;
    v42 = 0uLL;
    *&v43 = 0x1000000000;
    *(&v43 + 1) = v34;
    *&v44 = v26;
    *(&v44 + 1) = v27;
    v45[0] = 1;
    v46 = 4232;
    v47 = xmmword_1004881D0;
    v48 = v33;
    v49 = 0x1000000000;
    v50 = v37;
    v51 = 0;
    v52 = 0;
    v53 = 0x1000000000;
    v54 = v34;
    v55 = v26;
    v56 = v27;
    sub_100143E5C(v40, &v58);
    sub_100143EB8(v45);
    v28(v66, v6);
    *(v65 + 7) = v40[0];
    *(&v65[1] + 7) = v40[1];
    *(&v65[2] + 7) = v41;
    *(&v65[5] + 7) = v44;
    *(&v65[4] + 7) = v43;
    *(&v65[3] + 7) = v42;
    *&v57[33] = v65[2];
    *&v57[17] = v65[1];
    *&v57[1] = v65[0];
    *&v57[96] = *(&v44 + 1);
    *&v57[81] = v65[5];
    *&v57[65] = v65[4];
    *&v57[49] = v65[3];
    v61 = v65[2];
    v60 = v65[1];
    v57[0] = v36;
    v58 = v36;
    v59 = v65[0];
    *&v64[15] = *(&v44 + 1);
    *v64 = v65[5];
    v63 = v65[4];
    v62 = v65[3];
    sub_100143F0C(v57, &v39);
    sub_100143F68(&v58);
    v29 = *&v57[80];
    v30 = v35;
    *(v35 + 64) = *&v57[64];
    *(v30 + 80) = v29;
    *(v30 + 96) = *&v57[96];
    v31 = *&v57[16];
    *v30 = *v57;
    *(v30 + 16) = v31;
    result = *&v57[48];
    *(v30 + 32) = *&v57[32];
    *(v30 + 48) = result;
  }

  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.getEncryptedData(paddedData:using:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  sub_10000AB0C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v9 = static AES.KeyWrap.wrap(_:using:)();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.getEncryptedKeyData()()
{
  v1 = *(v0 + 80);
  sub_10000AB0C(v1, *(v0 + 88));
  return v1;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.decryptKeyData(using:)()
{
  v2 = *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v0 + 80);
  v40 = *(v0 + 80);
  sub_100142478(&v47, v46);
  sub_1000BA0A4();
  static AES.KeyWrap.unwrap<A>(_:using:)();
  sub_1000124C8(v40, *(&v40 + 1));
  if (v1)
  {
    return v9;
  }

  v39 = v7;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (v9[1])(v12, v8);
  v13 = v40;
  v14 = sub_100033AA8(_swiftEmptyArrayStorage);
  v48 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  *(v15 + 40) = &_swiftEmptyDictionarySingleton;
  *(v15 + 16) = v13;
  v17 = *(&v13 + 1) >> 62;
  if ((*(&v13 + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v13 + 16);
    }
  }

  else if (v17)
  {
    v16 = v13;
  }

  *(v15 + 32) = v16;
  swift_beginAccess();
  *(v15 + 40) = v14;
  v18 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v41 = v48;
  v42 = v18;
  *&v40 = v15;

  result = sub_100264BA4(&v40, v43);
  v9 = _swiftEmptyArrayStorage;
  v37 = v15;
  v38 = v18;
  while (1)
  {
    v20 = v5;
    v21 = v44;
    v22 = v45;
    if (v43[0] != 221)
    {

      sub_10000B02C();
      swift_allocError();
      *v36 = xmmword_10047CE70;
      *(v36 + 16) = 2;
      swift_willThrow();

      sub_1000124C8(v21, v22);
      return v9;
    }

    v23 = v45 >> 62;
    if ((v45 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_33;
      }

      v26 = *(v44 + 16);
      v25 = *(v44 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!v23)
      {
        v24 = BYTE6(v45);
        goto LABEL_21;
      }

      LODWORD(v24) = HIDWORD(v44) - v44;
      if (__OFSUB__(HIDWORD(v44), v44))
      {
        goto LABEL_37;
      }

      v24 = v24;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 > 0xFF)
    {
      goto LABEL_36;
    }

LABEL_21:
    if (!v24)
    {
LABEL_33:

      sub_1000124C8(v21, v22);
      return v9;
    }

    v28 = v2;
    sub_10000AB0C(v44, v45);
    v29 = sub_100033AA8(_swiftEmptyArrayStorage);
    v30 = swift_allocObject();
    v30[5] = &_swiftEmptyDictionarySingleton;
    v30[2] = v21;
    v30[3] = v22;
    if (!v23)
    {
      v31 = 0;
      goto LABEL_26;
    }

    if (v23 == 2)
    {
      v31 = *(v21 + 16);
LABEL_26:
      v32 = v39;
      goto LABEL_28;
    }

    v32 = v39;
    v31 = v21;
LABEL_28:
    v30[4] = v31;
    swift_beginAccess();
    v30[5] = v29;
    v41 = v48;
    v42 = v38;
    *&v40 = v30;
    sub_10000AB0C(v21, v22);

    NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(from:)(&v40, v32);

    sub_1000124C8(v21, v22);
    sub_1002774DC(v32, v20, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100117494(0, v9[2] + 1, 1, v9);
    }

    v2 = v28;
    v34 = v9[2];
    v33 = v9[3];
    v35 = v37;
    if (v34 >= v33 >> 1)
    {
      v9 = sub_100117494(v33 > 1, v34 + 1, 1, v9);
    }

    sub_1000124C8(v21, v22);
    sub_100277544(v39, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v9[2] = v34 + 1;
    v5 = v20;
    sub_100262DC8(v20, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v41 = v48;
    v42 = v38;
    *&v40 = v35;

    result = sub_100264BA4(&v40, v43);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.getDecryptedKeyData(using:)()
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + 80);
  v10 = v9;
  sub_100142478(&v10, v8);
  sub_1000BA0A4();
  static AES.KeyWrap.unwrap<A>(_:using:)();
  result = sub_1000124C8(v9, *(&v9 + 1));
  if (!v1)
  {
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v3 + 8))(v6, v2);
    return v9;
  }

  return result;
}

uint64_t sub_100239F6C()
{
  v1 = v0[3];
  v2 = v1 >> 62;
  v28 = v0[2];
  v30 = BYTE6(v1);
  v29 = enum case for DecodingError.valueNotFound(_:);
  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    v3 = v0[4];
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v3 >= *(v28 + 24))
        {
          return v27;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0)
      {
        return v27;
      }
    }

    else
    {
      v4 = v30;
      if (v2)
      {
        v4 = v28 >> 32;
      }

      if (v3 >= v4)
      {
        return v27;
      }
    }

    v33 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v34 = sub_1000325F0();
    v31[0] = v0;
    result = sub_100031694(v31, &type metadata for BinaryDecoder.UnkeyedContainer);
    v6 = *result;
    v7 = *(*result + 32);
    v8 = v7 + 6;
    if (__OFADD__(v7, 6))
    {
      break;
    }

    v9 = v6[2];
    v10 = v6[3];
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 == 2)
      {
        if (*(v9 + 24) >= v8)
        {
          goto LABEL_17;
        }
      }

      else if (v8 < 1)
      {
        goto LABEL_17;
      }

LABEL_24:
      sub_10000B02C();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 2;
      swift_willThrow();

LABEL_25:
      sub_100002A00(v31);
      swift_errorRetain();
      sub_10005DC58(&qword_10058C830, &qword_1004821F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v32 != 2)
      {
        sub_1000B2594(v31[0], v31[1], v32);
LABEL_36:
        v26 = v27;

        return v26;
      }

      if ((v31[0] & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      if (v12 < v8)
      {
        goto LABEL_24;
      }

LABEL_17:
      if (v8 < v7)
      {
        goto LABEL_39;
      }

      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      v6[4] = v8;
      sub_10000AB0C(v13, v14);
      v16 = sub_1000172CC(v13, v15);
      if ((v16 & 0x1000000000000) != 0)
      {
        v17 = type metadata accessor for DecodingError();
        swift_allocError();
        v19 = v18;
        v20 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
        *v19 = &type metadata for WiFiAddress;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v17 - 8) + 104))(v19, v29, v17);
        swift_willThrow();
        sub_1000124C8(v13, v15);
        goto LABEL_25;
      }

      v22 = v16;
      sub_1000124C8(v13, v15);
      sub_100002A00(v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1001161D0(0, *(v27 + 2) + 1, 1, v27);
      }

      v24 = *(v27 + 2);
      v23 = *(v27 + 3);
      if (v24 >= v23 >> 1)
      {
        v27 = sub_1001161D0((v23 > 1), v24 + 1, 1, v27);
      }

      *(v27 + 2) = v24 + 1;
      v25 = &v27[6 * v24];
      *(v25 + 16) = v22;
      v25[34] = BYTE2(v22);
      v25[35] = BYTE3(v22);
      v25[36] = BYTE4(v22);
      v25[37] = BYTE5(v22);
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void NANAttribute.ElementContainer.HTCapabilities.rxMCSMap.getter(uint64_t a1)
{
  if (*(a1 + 16) >= 0x14uLL)
  {

    sub_1001182A8(a1, a1 + 32, 3, 0x27uLL);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v2[2] = 16;
    v2[4] = 0;
    v2[5] = 0;
  }
}

uint64_t NANAttribute.ElementContainer.HTCapabilities.htcapabilitiesInfo.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return *(a1 + 32);
  }

  return *(a1 + 32) | (*(a1 + 33) << 8);
}

uint64_t NANAttribute.ElementContainer.HTCapabilities.ampduParams.getter(uint64_t a1)
{
  if (*(a1 + 16) <= 2uLL)
  {
    return 0;
  }

  else
  {
    return *(a1 + 34);
  }
}

uint64_t NANAttribute.ElementContainer.HTCapabilities.htExtcapabilities.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x14)
  {
    return 0;
  }

  if (v1 == 20)
  {
    return *(a1 + 51);
  }

  return *(a1 + 51) | (*(a1 + 52) << 8);
}

uint64_t NANAttribute.ElementContainer.HTCapabilities.txbeamForm.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x16)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 53);
    if (v1 == 22)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 54);
      if (v1 < 0x18)
      {
        v3 = 0;
        v4 = 0;
      }

      else
      {
        v4 = *(a1 + 55);
        if (v1 == 24)
        {
          v3 = 0;
        }

        else
        {
          v3 = *(a1 + 56) << 24;
        }
      }
    }
  }

  return v2 | (v5 << 8) | (v4 << 16) | v3;
}

uint64_t NANAttribute.ElementContainer.HTCapabilities.antennaSelectionCap.getter(uint64_t a1)
{
  if (*(a1 + 16) <= 0x19uLL)
  {
    return 0;
  }

  else
  {
    return *(a1 + 57);
  }
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.info.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (v1 == 1)
    {
      LODWORD(v1) = 0;
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 33);
      if (v1 < 3)
      {
        LODWORD(v1) = 0;
        v3 = 0;
      }

      else
      {
        v3 = *(a1 + 34);
        if (v1 == 3)
        {
          LODWORD(v1) = 0;
        }

        else
        {
          LODWORD(v1) = *(a1 + 35) << 24;
        }
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
  }

  return v2 | (v4 << 8) | (v3 << 16) | v1;
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 5)
  {
    return 0;
  }

  if (v1 == 5)
  {
    return *(a1 + 36);
  }

  return *(a1 + 36) | (*(a1 + 37) << 8);
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 7)
  {
    return 0;
  }

  if (v1 == 7)
  {
    return *(a1 + 38);
  }

  return *(a1 + 38) | (*(a1 + 39) << 8);
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 9)
  {
    return 0;
  }

  if (v1 == 9)
  {
    return *(a1 + 40);
  }

  return *(a1 + 40) | (*(a1 + 41) << 8);
}

uint64_t NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0xB)
  {
    return 0;
  }

  if (v1 == 11)
  {
    return *(a1 + 42);
  }

  return *(a1 + 42) | (*(a1 + 43) << 8);
}

void NANAttribute.ElementContainer.ElementIDExtension.macCapabilities.getter(uint64_t a1)
{
  if (*(a1 + 16) >= 7uLL)
  {

    sub_1001182A8(a1, a1 + 32, 1, 0xFuLL);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = 6;
    *(v2 + 32) = 0;
    *(v2 + 36) = 0;
  }
}

void NANAttribute.ElementContainer.ElementIDExtension.phyCapabilities.getter(uint64_t a1)
{
  if (*(a1 + 16) >= 0x12uLL)
  {

    sub_1001182A8(a1, a1 + 32, 7, 0x25uLL);
  }

  else
  {
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = 11;
    *(v2 + 32) = 0;
    *(v2 + 39) = 0;
  }
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap80MHz.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x13)
  {
    return 0;
  }

  if (v1 == 19)
  {
    return *(a1 + 50);
  }

  return *(a1 + 50) | (*(a1 + 51) << 8);
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.txMCSMap80MHz.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x15)
  {
    return 0;
  }

  if (v1 == 21)
  {
    return *(a1 + 52);
  }

  return *(a1 + 52) | (*(a1 + 53) << 8);
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.rxMCSMap160MHz.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x17)
  {
    return 0;
  }

  if (v1 == 23)
  {
    return *(a1 + 54);
  }

  return *(a1 + 54) | (*(a1 + 55) << 8);
}

uint64_t NANAttribute.ElementContainer.ElementIDExtension.txMCSMap160MHz.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 0x19)
  {
    return 0;
  }

  if (v1 == 25)
  {
    return *(a1 + 56);
  }

  return *(a1 + 56) | (*(a1 + 57) << 8);
}

uint64_t NANAttribute.ServiceDescriptorExtension.Control.furtherServiceDiscoveryFunction.getter(unsigned int a1)
{
  if (a1)
  {
    return (a1 >> 1) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t NANAttribute.ServiceDescriptorExtension.Control.datapathType.getter(unsigned int a1)
{
  if ((a1 & 4) != 0)
  {
    return (a1 >> 3) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10023A868(uint64_t a1, unint64_t a2)
{
  v11[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  v11[4] = sub_1001FECE4();
  v11[0] = v2;
  v5 = *sub_100031694(v11, &type metadata for BinaryEncoder.UnkeyedContainer);
  swift_beginAccess();
  v10[3] = &type metadata for Data;
  v10[4] = &protocol witness table for Data;
  v10[0] = a1;
  v10[1] = a2;
  v6 = sub_100029B34(v10, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];

  sub_10000AB0C(a1, a2);
  sub_100178A18(v7, v8);
  sub_100002A00(v10);
  swift_endAccess();
  return sub_100002A00(v11);
}

unint64_t sub_10023A9CC()
{
  if (*v0)
  {
    result = 0x61466D6F646E6172;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10023AA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004B9D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61466D6F646E6172 && a2 == 0xEC000000726F7463)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10023AB00(uint64_t a1)
{
  v2 = sub_10003DB18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023AB3C(uint64_t a1)
{
  v2 = sub_10003DB18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.MasterIndication.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_100592088, &qword_10049F7E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003DB18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10023AD2C()
{
  v1 = 0x746E756F43706F68;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10023AD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100282F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023ADB4(uint64_t a1)
{
  v2 = sub_1002775A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023ADF0(uint64_t a1)
{
  v2 = sub_1002775A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.Cluster.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_100592098, &qword_10049F7F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002775A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_1002775F8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.Cluster.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v11 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v11);
}

Swift::Int NANAttribute.Cluster.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  *v12 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v12[0]);
  return Hasher._finalize()();
}

unint64_t NANAttribute.Cluster.init(from:)(uint64_t *a1)
{
  result = sub_10026FBF8(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFF000000FFLL;
  }

  return result;
}

Swift::Int sub_10023B1C4()
{
  v11 = *(v0 + 12);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  return Hasher._finalize()();
}

void sub_10023B2C0()
{
  v9 = *(v0 + 12);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
}

Swift::Int sub_10023B384()
{
  v11 = *(v0 + 12);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  return Hasher._finalize()();
}

uint64_t sub_10023B47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026FBF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 12) = v6;
  }

  return result;
}

uint64_t sub_10023B558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10023B5E0(uint64_t a1)
{
  v2 = sub_10027764C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023B61C(uint64_t a1)
{
  v2 = sub_10027764C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ServiceIDList.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005920B0, &qword_10049F7F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10027764C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_1005920C0, &unk_10049F800);
  sub_1002776A0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void NANAttribute.ServiceIDList.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_10000AB0C(v5, *v4);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

Swift::Int NANAttribute.ServiceIDList.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_10000AB0C(v4, *v3);
      Data.hash(into:)();
      sub_1000124C8(v4, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void *sub_10023B90C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10026C128(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NANAttribute.ServiceDescriptor.ServiceResponseFilterControl.bloomFilterIndex.getter(char a1)
{
  v1 = sub_100038CD4(2, 2uLL, a1);
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v1);
  if (result == 4)
  {
    sub_10000B02C();
    swift_allocError();
    *v3 = xmmword_10047CE70;
    *(v3 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

CoreP2P::NANAttribute::ServiceDescriptor::ServiceResponseFilterControl __swiftcall NANAttribute.ServiceDescriptor.ServiceResponseFilterControl.init(type:include:bloomFilterIndex:)(CoreP2P::NANAttribute::ServiceDescriptor::ServiceResponseFilterControl::FilterType type, Swift::Bool include, CoreP2P::NANBloomFilter::Index bloomFilterIndex)
{
  v5 = sub_100238C98(type & 1, 0, 1uLL);
  v6 = sub_100238A18(include, 1, 1uLL);
  v7 = sub_100238C98(bloomFilterIndex, 2, 2uLL);
  if ((v6 & ~v5) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v5;
  if ((v7 & ~v9) != 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return (v10 | v9);
}

uint64_t sub_10023BD4C()
{
  if (*v0)
  {
    result = 0x6564756C636E69;
  }

  else
  {
    result = 0x6573736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_10023BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573736572646461 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564756C636E69 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10023BE70(uint64_t a1)
{
  v2 = sub_1002867A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023BEAC(uint64_t a1)
{
  v2 = sub_1002867A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void NANAttribute.ServiceDescriptor.ServiceFilterControl.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 37);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      v6 += 6;
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      --v5;
    }

    while (v5);
  }

  Hasher._combine(_:)(a3 & 1);
}

Swift::Int NANAttribute.ServiceDescriptor.ServiceFilterControl.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptor.ServiceFilterControl.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10023C03C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptor.ServiceFilterControl.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10023C098()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptor.ServiceFilterControl.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10023C0E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026D374(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10023C118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t NANAttribute.ServiceDescriptor.serviceID.getter()
{
  v1 = *v0;
  sub_10000AB0C(*v0, *(v0 + 8));
  return v1;
}

uint64_t NANAttribute.ServiceDescriptor.bindingBitmap.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 22) = BYTE2(result) & 1;
  v2 = *(v1 + 18);
  if ((result & 0x10000) != 0)
  {
    if ((*(v1 + 18) & 0x40) == 0)
    {
      return result;
    }

    v3 = v2 & 0xBF;
  }

  else
  {
    if ((*(v1 + 18) & 0x40) != 0)
    {
      return result;
    }

    v3 = v2 | 0x40;
  }

  *(v1 + 18) = v3;
  return result;
}

uint64_t *sub_10023C1FC(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 18);
    if (*(*result + 22))
    {
      if ((*(*result + 18) & 0x40) != 0)
      {
        *(v2 + 18) = v3 & 0xBF;
      }
    }

    else if ((*(*result + 18) & 0x40) == 0)
    {
      *(v2 + 18) = v3 | 0x40;
    }
  }

  return result;
}

uint64_t NANAttribute.ServiceDescriptor.matchingFilters.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  v5 = *(v1 + 18);
  if (a1)
  {
    if ((*(v1 + 18) & 4) != 0)
    {
      return result;
    }

    v6 = v5 | 4;
  }

  else
  {
    if ((*(v1 + 18) & 4) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFB;
  }

  *(v1 + 18) = v6;
  return result;
}

uint64_t *sub_10023C2A4(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 18);
    if (*(*result + 24))
    {
      if ((*(*result + 18) & 4) == 0)
      {
        *(v2 + 18) = v3 | 4;
      }
    }

    else if ((*(*result + 18) & 4) != 0)
    {
      *(v2 + 18) = v3 & 0xFB;
    }
  }

  return result;
}

uint64_t NANAttribute.ServiceDescriptor.serviceFilterControl.getter()
{
  v1 = *(v0 + 32);
  sub_100277778(v1, *(v0 + 40), *(v0 + 48) | (*(v0 + 50) << 16));
  return v1;
}

uint64_t NANAttribute.ServiceDescriptor.serviceFilterControl.setter(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *(v3 + 48);
  v7 = v3 + 48;
  result = sub_1001842AC(*(v7 - 16), *(v7 - 8), v8 | (*(v7 + 2) << 16));
  *(v7 - 16) = a1;
  *(v7 - 8) = a2;
  *(v7 + 2) = BYTE2(a3);
  *v7 = a3;
  return result;
}

uint64_t NANAttribute.ServiceDescriptor.serviceInfo.getter()
{
  v1 = v0[7];
  sub_100184290(v1, v0[8], v0[9]);
  return v1;
}

uint64_t NANAttribute.ServiceDescriptor.serviceInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001842D0(*(v3 + 56), *(v3 + 64), *(v3 + 72));
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  return result;
}

void NANAttribute.ServiceDescriptor.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 17));
  Hasher._combine(_:)(*(v2 + 18));
  if (*(v2 + 22) == 1)
  {
    Hasher._combine(_:)(0);
    v6 = v2[3];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    goto LABEL_9;
  }

  v11 = *(v2 + 10);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v11);
  v6 = v2[3];
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      sub_10000AB0C(v9, *v8);
      Data.hash(into:)();
      sub_1000124C8(v9, v10);
      v8 += 2;
      --v7;
    }

    while (v7);
  }

LABEL_9:
  if (*(v2 + 50) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v2 + 24) | (*(v2 + 50) << 16);
    v14 = v2[4];
    v13 = v2[5];
    Hasher._combine(_:)(1u);
    sub_100127A48(a1, v14, v13, v12 & 0x1FFFF);
  }

  v15 = *(v2 + 56);
  if (v15 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = v2 + 8;
    v16 = v2[8];
    v17 = v18[1];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);

    Data.hash(into:)();
  }
}

Swift::Int NANAttribute.ServiceDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptor.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10023C5E8()
{
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptor.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 NANAttribute.ServiceDescriptor.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002736B0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t NANAttribute.ServiceDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v79 = *v1;
  *v72 = *v1;
  sub_100031694(v75, v76);
  sub_10027779C(&v79, v69);
  sub_100277724();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    sub_1000124C8(v72[0], v72[1]);
    return sub_100002A00(v75);
  }

  sub_1000124C8(v72[0], v72[1]);
  v5 = *(v1 + 16);
  sub_100031694(v75, v76);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v6 = *(v3 + 17);
  sub_100031694(v75, v76);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v7 = *(v3 + 18);
  LOBYTE(v72[0]) = v7;
  sub_100031694(v75, v76);
  sub_1002777F8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if ((*(v3 + 22) & 1) == 0 && (v7 & 0x40) != 0)
  {
    v9 = *(v3 + 10);
    sub_100031694(v75, v76);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  v10 = *(v3 + 3);
  if (v10 && (v7 & 4) != 0)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v72[0] = _swiftEmptyArrayStorage;
      sub_1000C0624(0, v11, 0);
      v12 = v72[0];
      v13 = (v10 + 32);
      do
      {
        v14 = *v13;
        v15 = *(v13 + 1);
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          if (v16 != 2)
          {
            goto LABEL_23;
          }

          v66 = *v13;
          v18 = *v13;
          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          v17 = v19 - v20;
          if (__OFSUB__(v19, v20))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (!v16)
          {
            v17 = BYTE6(v15);
            goto LABEL_22;
          }

          v66 = *v13;
          v18 = *v13;
          if (__OFSUB__(DWORD1(v14), v14))
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v17 = DWORD1(v14) - v14;
        }

        sub_10000AB0C(v18, v15);
        v14 = v66;
LABEL_22:
        if (v17 >= 255)
        {
          v68 = v14;
          sub_10000B02C();
          swift_allocError();
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 16) = 2;
          swift_willThrow();
          sub_1000124C8(v68, v15);

          return sub_100002A00(v75);
        }

LABEL_23:
        v72[0] = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          v67 = v14;
          sub_1000C0624((v21 > 1), v22 + 1, 1);
          v14 = v67;
          v12 = v72[0];
        }

        *(v12 + 16) = v22 + 1;
        *(v12 + 16 * v22 + 32) = v14;
        ++v13;
        --v11;
      }

      while (v11);
    }

    v23 = sub_100033AA8(_swiftEmptyArrayStorage);
    v24 = type metadata accessor for BinaryEncoder();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100480A90;
    *(v25 + 32) = v23;
    v73 = v24;
    v74 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v72[0] = v25;

    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_10000CADC(&qword_10058CFF0, &qword_10058CC70, &unk_100484290);
    Array<A>.encode(to:)();

    sub_100002A00(v72);
    swift_beginAccess();
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    sub_10000AB0C(v26, v27);

    v72[0] = sub_1000D4BE0(v26, v27);
    v72[1] = v28;
    sub_100031694(v75, v76);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v72[0], v72[1]);
  }

  if (*(v3 + 50) == 255 || (v7 & 8) == 0)
  {
LABEL_29:
    v77 = *(v3 + 56);
    v78 = *(v3 + 9);
    v29 = v77;
    if (v77 != 4 && (v7 & 0x10) != 0)
    {
      v31 = *(&v77 + 1);
      v30 = v78;
      sub_100012400(&v77, v72, &qword_10058F2E0, qword_100491AC0);
      v32 = sub_100033AA8(_swiftEmptyArrayStorage);
      v33 = type metadata accessor for BinaryEncoder();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100480A90;
      *(v34 + 32) = v32;
      v73 = v33;
      v74 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v72[0] = v34;

      NANServiceInfo.encode(to:)(v72, v29, v31, v30);
      sub_100002A00(v72);
      swift_beginAccess();
      v49 = *(v34 + 16);
      v50 = *(v34 + 24);
      sub_10000AB0C(v49, v50);

      v70 = sub_1000D4BE0(v49, v50);
      v71 = v51;
      sub_100031694(v75, v76);
      sub_10005DC58(&qword_10058CC70, &unk_100484290);
      sub_10000CADC(&qword_10058CFF0, &qword_10058CC70, &unk_100484290);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v70, v71);
      sub_100016290(&v77, &qword_10058F2E0, qword_100491AC0);
    }

    return sub_100002A00(v75);
  }

  v36 = *(v3 + 4);
  v37 = *(v3 + 5);
  v38 = *(v3 + 24) | (*(v3 + 50) << 16);
  v80 = v38;
  if ((v38 & 0x10000) == 0)
  {
    v39 = *(v36 + 16);
    if ((v39 * 6) >> 64 != (6 * v39) >> 63)
    {
      goto LABEL_66;
    }

    if ((6 * v39) > 0xFE)
    {
      goto LABEL_68;
    }

    sub_100031694(v75, v76);
    v40 = v80;
    sub_100277778(v36, v37, v80);
    sub_100277790(v36, v37, v40, 0);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v41 = sub_100238C98(0, 0, 1uLL);
    v42 = sub_100238A18(v37 & 1, 1, 1uLL);
    v43 = v36;
    v44 = sub_100238C98(0, 2, 2uLL);
    v45 = v80;
    if ((v42 & ~v41) != 0)
    {
      v46 = v42;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46 | v41;
    if ((v44 & ~v47) != 0)
    {
      v48 = v44;
    }

    else
    {
      v48 = 0;
    }

    LOBYTE(v72[0]) = v48 | v47;
    sub_100031694(v75, v76);
    sub_100277894();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v72[0] = v43;
    sub_100031694(v75, v76);
    sub_10005DC58(&qword_10058E398, &qword_100489498);
    sub_1002778E8();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1001842AC(v43, v37, v45);
    sub_1001842AC(v43, v37, v45);
    goto LABEL_29;
  }

  v52 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v52 != 2)
    {
      v53 = 0;
      goto LABEL_54;
    }

    v55 = *(v36 + 16);
    v54 = *(v36 + 24);
    v53 = v54 - v55;
    if (!__OFSUB__(v54, v55))
    {
      goto LABEL_52;
    }

    __break(1u);
LABEL_50:
    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_71;
    }

    v53 = HIDWORD(v36) - v36;
LABEL_52:
    sub_100277790(v36, v37, v38, 1);
    goto LABEL_54;
  }

  if (v52)
  {
    goto LABEL_50;
  }

  v53 = BYTE6(v37);
LABEL_54:
  v56 = __OFADD__(v53, 1);
  v57 = v53 + 1;
  if (v56)
  {
    goto LABEL_67;
  }

  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if (v57 <= 0xFF)
  {
    sub_100031694(v75, v76);
    sub_100277790(v36, v37, v80, 1);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v58 = v36;
    v59 = sub_100238C98(1u, 0, 1uLL);
    v60 = v80;
    v61 = sub_100238A18((v80 >> 8) & 1, 1, 1uLL);
    v62 = sub_100238C98(v60, 2, 2uLL);
    if ((v61 & ~v59) != 0)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }

    v64 = v63 | v59;
    if ((v62 & ~v64) != 0)
    {
      v65 = v62;
    }

    else
    {
      v65 = 0;
    }

    LOBYTE(v72[0]) = v65 | v64;
    sub_100031694(v75, v76);
    sub_100277894();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v72[0] = v58;
    v72[1] = v37;
    sub_100031694(v75, v76);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1001842AC(v58, v37, v60);
    sub_1000124C8(v72[0], v72[1]);
    goto LABEL_29;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL sub_10023D20C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s7CoreP2P12NANAttributeO17ServiceDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

uint64_t NANAttribute.ServiceDescriptorExtension.Control.multicastType.getter(unsigned int a1)
{
  if ((~a1 & 0xC) != 0)
  {
    return 2;
  }

  else
  {
    return (a1 >> 4) & 1;
  }
}

uint64_t NANAttribute.ServiceDescriptorExtension.Control.gtkRequired.getter(__int16 a1)
{
  if ((a1 & 0x400) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_10023D37C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_10023D3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000011 && 0x80000001004BD730 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004BD750 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10023D498(uint64_t a1)
{
  v2 = sub_10027796C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023D4D4(uint64_t a1)
{
  v2 = sub_10027796C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ServiceDescriptorExtension.RangeLimit.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_1005920E8, &unk_10049F810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10027796C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10023D6A8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10026F1D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NANAttribute.ServiceDescriptorExtension.rangeLimit.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t NANAttribute.ServiceDescriptorExtension.serviceUpdateIndicator.setter(uint64_t result)
{
  *(v1 + 9) = result;
  *(v1 + 10) = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.ServiceDescriptorExtension.serviceInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001842D0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void NANAttribute.ServiceDescriptorExtension.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if ((*(v0 + 10) & 1) == 0)
    {
LABEL_3:
      v1 = *(v0 + 9);
      Hasher._combine(_:)(1u);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(v0 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    Hasher._combine(_:)(HIWORD(v2));
    if ((*(v0 + 10) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v1 = 0;
LABEL_6:
  Hasher._combine(_:)(v1);
  v3 = *(v0 + 16);
  if (v3 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);

    Data.hash(into:)();
  }
}

Swift::Int NANAttribute.ServiceDescriptorExtension.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptorExtension.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10023D8E4()
{
  Hasher.init(_seed:)();
  NANAttribute.ServiceDescriptorExtension.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.ServiceDescriptorExtension.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100271900(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10023D968(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return NANAttribute.ServiceDescriptorExtension.encode(to:)(a1);
}

uint64_t NANAttribute.ServiceDescriptorExtension.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v21, v22);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    v6 = *(v3 + 2);
    LOWORD(v20[0]) = v6;
    sub_100031694(v21, v22);
    sub_1002779C0();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if ((*(v3 + 8) & 1) == 0 && (v6 & 0x100) != 0)
    {
      LODWORD(v20[0]) = *(v3 + 4);
      sub_100031694(v21, v22);
      sub_100277A44();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }

    if ((*(v3 + 10) & 1) == 0 && (v6 & 0x200) != 0)
    {
      v8 = *(v3 + 9);
      sub_100031694(v21, v22);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }

    v9 = *(v3 + 16);
    if (v9 != 4)
    {
      v11 = *(v3 + 24);
      v10 = *(v3 + 32);
      sub_100197F08(v3, v20);
      v12 = sub_100033AA8(_swiftEmptyArrayStorage);
      v13 = type metadata accessor for BinaryEncoder();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100480A90;
      *(v14 + 32) = v12;
      v20[3] = v13;
      v20[4] = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v20[0] = v14;

      NANServiceInfo.encode(to:)(v20, v9, v11, v10);
      sub_100002A00(v20);
      swift_beginAccess();
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      sub_10000AB0C(v15, v16);

      v18 = sub_1000D4CB4(v15, v16);
      v19 = v17;
      sub_100031694(v21, v22);
      sub_10005DC58(&qword_10058D3B0, &unk_1004869B0);
      sub_10000CADC(&qword_100592100, &qword_10058D3B0, &unk_1004869B0);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v18, v19);
      sub_100277A14(v3);
    }
  }

  return sub_100002A00(v21);
}

BOOL sub_10023DCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P12NANAttributeO26ServiceDescriptorExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t NANAttribute.IBSS.availability.getter()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_10000AB0C(v2, v3);
  if (v1)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return v4 | v5;
}

uint64_t NANAttribute.IBSS.availability.setter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 >> 8;
  result = sub_1000124C8(*(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 17) = v7;
  *(v3 + 18) = BYTE2(a1) & 1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

unint64_t sub_10023DF94()
{
  v1 = 0x6962616C69617661;
  if (*v0 != 2)
  {
    v1 = 1701605234;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10023E014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100283064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023E03C(uint64_t a1)
{
  v2 = sub_100277A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023E078(uint64_t a1)
{
  v2 = sub_100277A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.WLANInfrastructure.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592110, &qword_10049F820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277A98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 4);
  LOBYTE(v15) = 0;
  sub_10008A490();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 6);
    v13 = *(v3 + 10);
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 16);
    v16 = *(v3 + 32);
    v14 = 2;
    sub_100277AEC(v3, &v12);
    sub_100277B24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(*(&v15 + 1), v16);
    LOBYTE(v12) = *(v3 + 40);
    LOBYTE(v15) = 3;
    sub_100277B78();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.WLANInfrastructure.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 18);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v11 & 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
}

Swift::Int NANAttribute.WLANInfrastructure.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 18);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v11 & 1);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

double NANAttribute.WLANInfrastructure.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10026D6D0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

Swift::Int sub_10023E59C()
{
  Hasher.init(_seed:)();
  NANAttribute.WLANInfrastructure.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10023E5D8(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return NANAttribute.WLANInfrastructure.encode(to:)(a1);
}

BOOL sub_10023E614(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s7CoreP2P12NANAttributeO18WLANInfrastructureV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

uint64_t NANAttribute.Mesh.availability.setter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 >> 8;
  result = sub_1000124C8(*(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 9) = v7;
  *(v3 + 10) = BYTE2(a1) & 1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t sub_10023E7D4()
{
  v1 = 0x657264644163616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6962616C69617661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t sub_10023E834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002831DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023E85C(uint64_t a1)
{
  v2 = sub_100277BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023E898(uint64_t a1)
{
  v2 = sub_100277BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.P2POperation.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v9 = sub_10005DC58(&qword_100592130, &qword_10049F828);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v19 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277BCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = a2;
  v29 = 0;
  sub_100277C20();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v15 = a3;
    v16 = v20;
    v17 = v21;
    LOBYTE(v22) = BYTE1(a2);
    HIBYTE(v22) = BYTE2(a2);
    v23 = BYTE3(a2);
    v24 = BYTE4(a2);
    v25 = BYTE5(a2);
    v26 = BYTE6(a2);
    v29 = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v15;
    v23 = BYTE2(v15) & 1;
    v27 = v16;
    v28 = v17;
    v29 = 2;
    sub_10000AB0C(v16, v17);
    sub_100277B24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v27, v28);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t NANAttribute.P2POperation.hash(into:)(int a1, unint64_t a2, unsigned int a3)
{
  v4 = a3 >> 8;
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(BYTE2(a3) & 1);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.P2POperation.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = a2 >> 8;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v10 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10023ED30()
{
  v11 = *(v0 + 10);
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10023EE40()
{
  v1 = *(v0 + 10);
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);

  return Data.hash(into:)();
}

Swift::Int sub_10023EF20()
{
  v11 = *(v0 + 10);
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10023F02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026B358(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5) & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_10023F0A0(void *a1)
{
  if (*(v1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return NANAttribute.P2POperation.encode(to:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48), *(v1 + 4) | v2, *(v1 + 2), *(v1 + 3));
}

BOOL sub_10023F0F0(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48);
  if (*(a1 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100266C4C(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48), *(a1 + 4) | v3, *(a1 + 2), *(a1 + 3), *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48), *(a2 + 4) | v4, *(a2 + 2), *(a2 + 3));
}

uint64_t sub_10023F164()
{
  v1 = 0x657264644163616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6962616C69617661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4953534273736269;
  }
}

uint64_t sub_10023F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100283300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023F1F8(uint64_t a1)
{
  v2 = sub_100277C74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023F234(uint64_t a1)
{
  v2 = sub_100277C74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.IBSS.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592148, &qword_10049F830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277C74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 4);
  LOBYTE(v15) = 0;
  sub_10008A490();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 6);
    v13 = *(v3 + 10);
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 16);
    v16 = *(v3 + 32);
    v14 = 2;
    sub_100277CC8(v3, &v12);
    sub_100277B24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(*(&v15 + 1), v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NANAttribute.IBSS.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 18);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v11 & 1);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.IBSS.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 18);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v11 & 1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.IBSS.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10026F628(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10023F74C()
{
  v15 = *(v0 + 18);
  v16 = *(v0 + 32);
  v17 = *(v0 + 24);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v11 = *(v0 + 10);
  v12 = *(v0 + 11);
  v13 = *(v0 + 16);
  v14 = *(v0 + 17);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);

  return Data.hash(into:)();
}

Swift::Int sub_10023F874()
{
  v16 = *(v0 + 18);
  v17 = *(v0 + 32);
  v18 = *(v0 + 24);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 11);
  v14 = *(v0 + 16);
  v15 = *(v0 + 17);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10023F9DC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return NANAttribute.IBSS.encode(to:)(a1);
}

BOOL sub_10023FA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P12NANAttributeO4IBSSV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t NANAttribute.Mesh.availability.getter()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);
  sub_10000AB0C(v2, v3);
  if (v1)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return v4 | v5;
}

uint64_t NANAttribute.Mesh.meshID.getter()
{
  v1 = *(v0 + 32);
  sub_10000AB0C(v1, *(v0 + 40));
  return v1;
}

uint64_t NANAttribute.Mesh.meshID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10023FB24()
{
  v1 = 0x6962616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x44496873656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657264644163616DLL;
  }
}

uint64_t sub_10023FB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028342C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023FBB0(uint64_t a1)
{
  v2 = sub_100277D00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10023FBEC(uint64_t a1)
{
  v2 = sub_100277D00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.Mesh.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592158, &qword_10049F838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277D00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LODWORD(v14) = *v3;
  WORD2(v14) = *(v3 + 4);
  v12[0] = 0;
  sub_10008A490();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + 8);
    v18 = *(v3 + 24);
    v14 = *(v3 + 8);
    v15 = *(v3 + 24);
    v13 = 1;
    sub_100277D54(&v17, v12);
    sub_100277B24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(*(&v14 + 1), v15);
    v16 = *(v3 + 32);
    v14 = *(v3 + 32);
    v13 = 2;
    sub_100277DB0(&v16, v12);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NANAttribute.Mesh.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 10);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 9);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6 & 1);
  Data.hash(into:)();
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.Mesh.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 10);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 9);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6 & 1);
  Data.hash(into:)();
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  Data.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.Mesh.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10026F8B0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_10024005C()
{
  v1 = *(v0 + 10);
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 32);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024016C()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 24);
  v13 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = *(v0 + 40);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100240258()
{
  v1 = *(v0 + 10);
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 32);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024037C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P12NANAttributeO4MeshV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

uint64_t NANAttribute.FurtherServiceDiscovery.availability.setter(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 >> 8;
  result = sub_1000124C8(*(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 1) = v7;
  *(v3 + 2) = BYTE2(a1) & 1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_100240484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100240510(uint64_t a1)
{
  v2 = sub_100277E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024054C(uint64_t a1)
{
  v2 = sub_100277E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.FurtherServiceDiscovery.encode(to:)(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  HIDWORD(v15) = a2 >> 8;
  v8 = sub_10005DC58(&qword_100592168, &qword_10049F840);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = BYTE4(v15);
  v18 = BYTE2(a2) & 1;
  v19 = a3;
  v20 = a4;
  sub_10000AB0C(a3, a4);
  sub_100277B24();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v19, v20);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100240790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026E78C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1002407D0(void *a1)
{
  if (*(v1 + 2))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return NANAttribute.FurtherServiceDiscovery.encode(to:)(a1, *v1 | v2, *(v1 + 1), *(v1 + 2));
}

unint64_t sub_100240864()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x444970616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1002408A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970616DLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004BD7B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100240980(uint64_t a1)
{
  v2 = sub_100277E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002409BC(uint64_t a1)
{
  v2 = sub_100277E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.FurtherAvailabilityMap.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return sub_1000BD2D0(a2, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.FurtherAvailabilityMap.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_100592178, &qword_10049F848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277E60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1000E2968();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_10005DC58(&qword_100592188, &qword_10049F850);
    sub_100277EB4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.FurtherAvailabilityMap.hash(into:)(uint64_t a1, Swift::UInt8 a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);

  sub_1000E0538(a1, a3);
}

Swift::Int NANAttribute.FurtherAvailabilityMap.hashValue.getter(Swift::UInt8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  sub_1000E0538(v5, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100240C80()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_1000E0538(v4, v1);
  return Hasher._finalize()();
}

void sub_100240CE0(uint64_t a1)
{
  v3 = *(v1 + 8);
  Hasher._combine(_:)(*v1);

  sub_1000E0538(a1, v3);
}

Swift::Int sub_100240D30()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_1000E0538(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_100240DF0()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x657264644163616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_100240E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100240F0C(uint64_t a1)
{
  v2 = sub_100277F8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100240F48(uint64_t a1)
{
  v2 = sub_100277F8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.Ranging.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LOBYTE(v9) = BYTE4(a1);
  HIBYTE(v9) = BYTE5(a1);
  LOBYTE(v8) = BYTE4(a4);
  HIBYTE(v8) = BYTE5(a4);
  if (a1 != a4 || v9 != v8)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
}

uint64_t NANAttribute.Ranging.encode(to:)(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v4 = a2;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v18 = a2 >> 24;
  v19 = HIDWORD(a2);
  v20 = a2 >> 40;
  v8 = sub_10005DC58(&qword_1005921A0, &qword_10049F858);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277F8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = v4;
  BYTE1(v22) = v6;
  BYTE2(v22) = v7;
  BYTE3(v22) = v18;
  BYTE4(v22) = v19;
  BYTE5(v22) = v20;
  v24 = 0;
  sub_10008A490();
  v14 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v22 = v16;
    v23 = v17;
    v24 = 1;
    sub_10000AB0C(v16, v17);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v22, v23);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t NANAttribute.Ranging.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.Ranging.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002413D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024149C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);

  return Data.hash(into:)();
}

Swift::Int sub_100241544()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024160C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026FDE0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100241690(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*a1 != *a2 || v4 != *(a2 + 4))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v6, v7, v8);
}

uint64_t sub_10024174C()
{
  v1 = 0x7366664F656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4972657473756C63;
  }
}

uint64_t sub_1002417B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028354C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002417DC(uint64_t a1)
{
  v2 = sub_100277FE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241818(uint64_t a1)
{
  v2 = sub_100277FE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ClusterDiscovery.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v4 = a2;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v20 = a2 >> 24;
  v21 = HIDWORD(a2);
  v22 = a2 >> 40;
  v8 = sub_10005DC58(&qword_1005921B0, &qword_10049F860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100277FE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = v4;
  BYTE1(v24) = v6;
  BYTE2(v24) = v7;
  BYTE3(v24) = v20;
  BYTE4(v24) = v21;
  BYTE5(v24) = v22;
  v25 = 0;
  sub_10008A490();
  v14 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v16 = v18;
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v16;
    v25 = 2;
    sub_1002775F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

void NANAttribute.ClusterDiscovery.hash(into:)(int a1, unint64_t a2, Swift::UInt64 a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = a4 >> 8;
  v12 = a4 >> 16;
  *v13 = a4 >> 24;
  *v14 = HIDWORD(a4);
  *v15 = a4 >> 40;
  *v16 = HIWORD(a4);
  *v17 = HIBYTE(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
}

Swift::Int NANAttribute.ClusterDiscovery.hashValue.getter(unint64_t a1, Swift::UInt64 a2, unint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  v11 = a3 >> 8;
  *v13 = a3 >> 16;
  *v14 = a3 >> 24;
  *v15 = HIDWORD(a3);
  *v16 = a3 >> 40;
  *v17 = HIWORD(a3);
  *v18 = HIBYTE(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  return Hasher._finalize()();
}

void sub_100241D30()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 16);
  v8 = *(v0 + 17);
  v9 = *(v0 + 18);
  v10 = *(v0 + 19);
  v11 = *(v0 + 20);
  v12 = *(v0 + 21);
  v13 = *(v0 + 22);
  v14 = *(v0 + 23);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
}

Swift::Int sub_100241E38()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 16);
  v9 = *(v0 + 17);
  v11 = *(v0 + 18);
  v12 = *(v0 + 19);
  v13 = *(v0 + 20);
  v14 = *(v0 + 21);
  v15 = *(v0 + 22);
  v16 = *(v0 + 23);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  return Hasher._finalize()();
}

uint64_t sub_100241F88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026C49C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1002420B8(uint64_t a1)
{
  v2 = sub_100278034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002420F4(uint64_t a1)
{
  v2 = sub_100278034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_1005921C0, &qword_10049F868);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278034();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.hashValue.getter(Swift::UInt16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005921D0, &qword_10049F870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100278034();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

uint64_t sub_100242424@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005921D0, &qword_10049F870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278034();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100002A00(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_100242584(void *a1)
{
  v3 = sub_10005DC58(&qword_1005921C0, &qword_10049F868);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_100029B34(a1, a1[3]);
  sub_100278034();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NANAttribute.DeviceCapability.mapID.setter(uint64_t result)
{
  *v1 = result;
  v1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.DeviceCapability.maximumChannelSwitchTime.getter@<X0>(unsigned __int16 a1@<W1>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = enum case for DispatchTimeInterval.microseconds(_:);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

unint64_t sub_1002429EC()
{
  v1 = *v0;
  v2 = 0x444970616DLL;
  v3 = 0xD000000000000024;
  if (v1 != 5)
  {
    v3 = 0x696C696261706163;
  }

  v4 = 1701080941;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000023;
  if (v1 != 1)
  {
    v5 = 0x6574726F70707573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100242ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028367C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100242B04(uint64_t a1)
{
  v2 = sub_100278088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100242B40(uint64_t a1)
{
  v2 = sub_100278088();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.DeviceCapability.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v4 = BYTE2(a3);
  v7 = sub_10005DC58(&qword_1005921D8, &qword_10049F878);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14[-v10];
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278088();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2 & 0x1FF;
  v17 = 0;
  sub_1002780DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v15 = WORD1(a2);
    v16 = 1;
    sub_100278130();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[25] = BYTE4(a2);
    v14[24] = 2;
    sub_1000E27C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[15] = BYTE5(a2);
    v14[14] = 3;
    sub_100278184();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[13] = BYTE6(a2);
    v14[12] = 4;
    sub_1002781D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[11] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[10] = v4;
    v14[9] = 6;
    sub_10027822C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.DeviceCapability.hash(into:)(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = HIWORD(a3);
  v5 = HIWORD(a2);
  v6 = a2 >> 40;
  if ((a2 & 0x100) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * a2;
  }

  v8 = HIDWORD(a2);
  v9 = a2 >> 16;
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int NANAttribute.DeviceCapability.hashValue.getter(uint64_t a1, int a2)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * a1;
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(WORD1(a1));
  Hasher._combine(_:)(BYTE4(a1));
  Hasher._combine(_:)(BYTE5(a1));
  Hasher._combine(_:)(BYTE6(a1));
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(BYTE2(a2));
  return Hasher._finalize()();
}

unint64_t NANAttribute.DeviceCapability.init(from:)(uint64_t *a1)
{
  result = sub_10026C6C0(a1);
  if (!v1)
  {
    return result & 0xFFFFFFFFFF00FFLL | ((BYTE1(result) & 1) << 8);
  }

  return result;
}

Swift::Int sub_100243028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 4);
  v8 = v0[10];
  Hasher.init(_seed:)();
  if (v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v1;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

void sub_1002430FC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 8);
  v6 = *(v0 + 10);
  if (*(v0 + 1))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * *v0;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_10024319C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 4);
  v8 = v0[10];
  Hasher.init(_seed:)();
  if (v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * v1;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

unint64_t sub_10024326C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026C6C0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
  }

  return result;
}

uint64_t sub_10024347C()
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 1;
  *(result + 32) = 1;
  off_100592080 = result;
  return result;
}

unint64_t NANAttribute.DeviceCapabilityExtension.regulatoryInformationForSixGHz.getter(uint64_t a1)
{
  if (qword_10058AB38 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = off_100592080;
  v10 = off_100592080;
  v3 = *(off_100592080 + 2);
  v4 = *(a1 + 16);
  if (v3 <= v4)
  {

    v5 = v2;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_100235DAC((v3 - v4));
    v5 = v10;
    v3 = *(v10 + 2);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  v6 = 0;
  while (v4 != v6)
  {
    v7 = *(a1 + 32 + v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1000C28C4(v5);
    }

    if (v6 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5[v6 + 32] &= v7;
    if (v3 == ++v6)
    {
      break;
    }
  }

LABEL_12:
  v8 = sub_1000C2E80(v5, v2);

  result = 5;
  if (v4)
  {
    if (v8)
    {
      return 0x505050403020100uLL >> ((4 * *(a1 + 32)) & 0x38);
    }
  }

  return result;
}

uint64_t sub_100243624()
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 2;
  *(result + 32) = 256;
  static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled = result;
  return result;
}

uint64_t sub_10024368C()
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 2;
  *(result + 32) = 512;
  static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled = result;
  return result;
}

uint64_t sub_1002436F4(uint64_t a1)
{
  v2 = sub_100278280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100243730(uint64_t a1)
{
  v2 = sub_100278280();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.DeviceCapabilityExtension.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100592210, &unk_10049F880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278280();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100165E30(&qword_10058E320);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10024393C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10026EBAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100243984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  sub_10029F424(v4);

  result = swift_bridgeObjectRelease_n();
  *a2 = v6;
  return result;
}

uint64_t sub_1002439F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  sub_100238184(v4);

  result = swift_bridgeObjectRelease_n();
  *a2 = v6;
  return result;
}

uint64_t sub_100243A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v7 = *v2;
  swift_bridgeObjectRetain_n();
  sub_1000C2E7C(v4);

  v5 = v7;
  if (sub_1000C2E80(v7, _swiftEmptyArrayStorage))
  {

    v5 = 0;
  }

  else
  {
    result = sub_100238588(v4, sub_1000C2E7C);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100243B20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100238038(*a1, sub_10029F424);

  *a2 = v3;
  return result;
}

uint64_t sub_100243B78(uint64_t *a1)
{
  sub_100238184(*a1);
}

uint64_t sub_100243BB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100238290(*a1, *v2);

  *a2 = v4;
  return result;
}

uint64_t sub_100243C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10027576C(a1);

  *a2 = v3;
  return result;
}

uint64_t NANAttribute.Datapath.Status.description.getter(char a1)
{
  if (!a1)
  {
    return 0x65756E69746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6465747065636361;
  }

  return 0x64657463656A6572;
}

uint64_t sub_100243E4C()
{
  v1 = 0x6465747065636361;
  if (*v0 != 1)
  {
    v1 = 0x64657463656A6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t NANAttribute.Datapath.type.getter()
{
  if ((*(v0 + 1) & 0xFu) >= 5)
  {
    return 5;
  }

  else
  {
    return *(v0 + 1) & 0xF;
  }
}

uint64_t NANAttribute.Datapath.status.getter()
{
  v1 = *(v0 + 1) >> 4;
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t NANAttribute.Datapath.initiatorDatapathInterfaceAddress.setter(uint64_t result)
{
  *(v1 + 3) = result;
  *(v1 + 5) = BYTE2(result);
  *(v1 + 6) = BYTE3(result);
  *(v1 + 7) = BYTE4(result);
  *(v1 + 8) = BYTE5(result);
  return result;
}

uint64_t NANAttribute.Datapath.publishID.setter(uint64_t result)
{
  *(v1 + 11) = result;
  *(v1 + 12) = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.Datapath.responderDatapathInterfaceAddress.setter(uint64_t result)
{
  *(v1 + 13) = result;
  *(v1 + 17) = WORD2(result);
  *(v1 + 19) = BYTE6(result) & 1;
  return result;
}

uint64_t NANAttribute.Datapath.serviceInfo.getter()
{
  v1 = v0[3];
  sub_100184290(v1, v0[4], v0[5]);
  return v1;
}

uint64_t NANAttribute.Datapath.serviceInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001842D0(*(v3 + 24), *(v3 + 32), *(v3 + 40));
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return result;
}

void NANAttribute.Datapath.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  Hasher._combine(_:)(*(v0 + 3));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(*(v0 + 9));
  Hasher._combine(_:)(*(v0 + 10));
  if (*(v0 + 12))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 11);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v6);
  if (*(v0 + 19))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = *(v0 + 17);
    v9 = *(v0 + 13);
    v10 = v9 | (*(v0 + 17) << 32);
    v11 = v10 >> 8;
    v12 = v10 >> 16;
    v13 = v10 >> 24;
    v7 = v8 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
    Hasher._combine(_:)(v11);
    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v8);
  }

  Hasher._combine(_:)(v7);
  v14 = *(v0 + 24);
  if (v14 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v14);

    Data.hash(into:)();
  }
}

Swift::Int NANAttribute.Datapath.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.Datapath.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100244324()
{
  Hasher.init(_seed:)();
  NANAttribute.Datapath.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.Datapath.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002712F8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t NANAttribute.Datapath.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v18, v19);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    v10 = v3[1];
    sub_100031694(v18, v19);
    sub_10005DC58(&qword_100592220, &unk_10049F890);
    sub_10000CADC(&qword_100592228, &qword_100592220, &unk_10049F890);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v11 = v3[2];
    sub_100031694(v18, v19);
    sub_1002782D4();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v12 = *(v3 + 3);
    v15 = *(v3 + 7);
    sub_100031694(v18, v19);
    sub_10008A490();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v6 = v3[9];
    sub_100031694(v18, v19);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v7 = v3[10];
    sub_100031694(v18, v19);
    sub_100278328();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if ((v3[12] & 1) == 0 && (v7 & 8) != 0)
    {
      v9 = v3[11];
      sub_100031694(v18, v19);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }

    if ((v3[19] & 1) == 0 && (v7 & 0x10) != 0)
    {
      v13 = *(v3 + 13);
      v16 = *(v3 + 17);
      sub_100031694(v18, v19);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }

    if (*(v3 + 3) != 4 && (v7 & 0x20) != 0)
    {
      v14 = *(v3 + 3);
      v17 = *(v3 + 2);
      sub_100031694(v18, v19);
      sub_10027837C();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }
  }

  return sub_100002A00(v18);
}

BOOL sub_100244704(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P12NANAttributeO8DatapathV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

uint64_t NANAttribute.DatapathExtension.serviceInfo.getter()
{
  v1 = v0[5];
  sub_100184290(v1, v0[6], v0[7]);
  return v1;
}

uint64_t NANAttribute.DatapathExtension.serviceInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001842D0(*(v3 + 40), *(v3 + 48), *(v3 + 56));
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return result;
}

void NANAttribute.DatapathExtension.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  Hasher._combine(_:)(*(v0 + 3));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(*(v0 + 9));
  Hasher._combine(_:)(*(v0 + 10));
  if (*(v0 + 12))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 11);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v6);
  if (*(v0 + 19))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = *(v0 + 17);
    v9 = *(v0 + 13);
    v10 = v9 | (*(v0 + 17) << 32);
    v11 = v10 >> 8;
    v12 = v10 >> 16;
    v13 = v10 >> 24;
    v7 = v8 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
    Hasher._combine(_:)(v11);
    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v8);
  }

  Hasher._combine(_:)(v7);
  if (*(v0 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v15 = *(v0 + 40);
  if (v15 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);

    Data.hash(into:)();
  }
}

Swift::Int NANAttribute.DatapathExtension.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.DatapathExtension.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100244B8C()
{
  Hasher.init(_seed:)();
  NANAttribute.DatapathExtension.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.DatapathExtension.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10027446C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t NANAttribute.DatapathExtension.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v41, v42);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v41);
  }

  LOBYTE(v36) = v3[1];
  sub_100031694(v41, v42);
  sub_10005DC58(&qword_100592220, &unk_10049F890);
  sub_10000CADC(&qword_100592228, &qword_100592220, &unk_10049F890);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LOBYTE(v36) = v3[2];
  sub_100031694(v41, v42);
  sub_1002782D4();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LODWORD(v36) = *(v3 + 3);
  WORD2(v36) = *(v3 + 7);
  sub_100031694(v41, v42);
  sub_10008A490();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v6 = v3[9];
  sub_100031694(v41, v42);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v7 = v3[10];
  LOBYTE(v36) = v7;
  sub_100031694(v41, v42);
  sub_1002783D0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if ((v3[12] & 1) == 0 && (v7 & 8) != 0)
  {
    v9 = v3[11];
    sub_100031694(v41, v42);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  if ((v3[19] & 1) == 0 && (v7 & 0x10) != 0)
  {
    LODWORD(v36) = *(v3 + 13);
    WORD2(v36) = *(v3 + 17);
    sub_100031694(v41, v42);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  v45 = *(v3 + 24);
  v10 = *(&v45 + 1);
  if (*(&v45 + 1) >> 60 != 15)
  {
    v17 = v45;
    sub_100012400(&v45, &v36, &unk_100596890, &qword_10049F8A0);
    v18 = sub_100033AA8(_swiftEmptyArrayStorage);
    type metadata accessor for BinaryEncoder();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100480A90;
    *(v19 + 32) = v18;
    sub_10023A868(v17, v10);
    swift_beginAccess();
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    sub_10000AB0C(v20, v21);

    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        v30 = __OFSUB__(v28, v29);
        v23 = v28 - v29;
        if (!v30)
        {
LABEL_23:
          if (v23 >= 0xFFFF)
          {
            sub_10000B02C();
            swift_allocError();
            *v33 = 0;
            *(v33 + 8) = 0;
            *(v33 + 16) = 2;
            swift_willThrow();
            sub_100016290(&v45, &unk_100596890, &qword_10049F8A0);
            v34 = v20;
            goto LABEL_32;
          }

          goto LABEL_24;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else if (v22)
    {
      LODWORD(v23) = HIDWORD(v20) - v20;
      if (!__OFSUB__(HIDWORD(v20), v20))
      {
        v23 = v23;
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_24:
    LOBYTE(v36) = 0;
    v37 = v20;
    v38 = v21;
    sub_100031694(v41, v42);
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_10000CADC(&qword_100592250, &qword_10058CF90, &qword_1004841A0);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v37, v38);
    sub_100016290(&v45, &unk_100596890, &qword_10049F8A0);
  }

  v43 = *(v3 + 40);
  v44 = *(v3 + 7);
  v11 = v43;
  if (v43 == 4)
  {
    return sub_100002A00(v41);
  }

  v13 = *(&v43 + 1);
  v12 = v44;
  sub_100012400(&v43, &v36, &qword_10058F2E0, qword_100491AC0);
  v14 = sub_100033AA8(_swiftEmptyArrayStorage);
  v15 = type metadata accessor for BinaryEncoder();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100480A90;
  *(v16 + 32) = v14;
  v39 = v15;
  v40 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v36 = v16;

  NANServiceInfo.encode(to:)(&v36, v11, v13, v12);
  sub_100002A00(&v36);
  swift_beginAccess();
  v24 = *(v16 + 16);
  v21 = *(v16 + 24);
  sub_10000AB0C(v24, v21);

  v25 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (v25)
    {
      LODWORD(v26) = HIDWORD(v24) - v24;
      if (!__OFSUB__(HIDWORD(v24), v24))
      {
        v27 = v24;
        v26 = v26;
LABEL_28:
        v24 = v27;
        if (v26 < 0xFFFF)
        {
          goto LABEL_29;
        }

        sub_10000B02C();
        swift_allocError();
        *v35 = 0;
        *(v35 + 8) = 0;
        *(v35 + 16) = 2;
        swift_willThrow();
        sub_100016290(&v43, &qword_10058F2E0, qword_100491AC0);
        v34 = v24;
LABEL_32:
        sub_1000124C8(v34, v21);
        return sub_100002A00(v41);
      }

      goto LABEL_35;
    }

LABEL_29:
    sub_100031694(v41, v42);
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_10000CADC(&qword_100592250, &qword_10058CF90, &qword_1004841A0);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v24, v21);
    sub_100016290(&v43, &qword_10058F2E0, qword_100491AC0);
    return sub_100002A00(v41);
  }

  if (v25 != 2)
  {
    goto LABEL_29;
  }

  v32 = *(v24 + 16);
  v31 = *(v24 + 24);
  v30 = __OFSUB__(v31, v32);
  v26 = v31 - v32;
  if (!v30)
  {
    v27 = v24;
    goto LABEL_28;
  }

LABEL_36:
  __break(1u);
  return result;
}

BOOL sub_1002453E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s7CoreP2P12NANAttributeO17DatapathExtensionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

uint64_t sub_100245518()
{
  v1 = 0x6C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6575716573;
  }
}

uint64_t sub_10024557C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002838D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002455A4(uint64_t a1)
{
  v2 = sub_100278424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002455E0(uint64_t a1)
{
  v2 = sub_100278424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.Availability.__derived_struct_equals(_:_:)(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1 != a3 || (a3 ^ a1) >> 16)
  {
    return 0;
  }

  else
  {
    return sub_1000BD70C(a2, a4);
  }
}

uint64_t NANAttribute.Availability.encode(to:)(void *a1, int a2, uint64_t a3)
{
  v5 = HIWORD(a2);
  v7 = sub_10005DC58(&qword_100592258, &qword_10049F8A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16 = v5;
    v17 = 1;
    sub_100278478();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[1] = a3;
    v15 = 2;
    sub_10005DC58(&qword_100592270, &qword_10049F8B0);
    sub_1002784CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.Availability.hash(into:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);

  sub_1000E0374(a1, a3);
}

Swift::Int NANAttribute.Availability.hashValue.getter(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  sub_1000E0374(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100245910()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  sub_1000E0374(v5, v1);
  return Hasher._finalize()();
}

void sub_100245980(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 2);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v4);

  sub_1000E0374(a1, v3);
}

Swift::Int sub_1002459DC()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  sub_1000E0374(v5, v1);
  return Hasher._finalize()();
}

uint64_t sub_100245A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026B818(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100245AA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_1000BD70C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100245BA8()
{
  sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100480F40;
  v1 = sub_100238B78(0, 0, 3uLL);
  v2 = sub_100238B78(3u, 3, 3uLL);
  v3 = sub_1002388F4(0, 6, 9uLL);
  if ((v2 & ~v1) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | v1;
  if ((v3 & ~v5) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v5;
  result = sub_10002D874(&off_100556ED0);
  *(v0 + 32) = 0;
  *(v0 + 40) = v7;
  *(v0 + 48) = result;
  *(v0 + 56) = v9;
  LODWORD(static NANAttribute.DataCluster.empty) = 0;
  *(&static NANAttribute.DataCluster.empty + 3) = 0;
  *(&static NANAttribute.DataCluster.empty + 1) = v0;
  return result;
}

__int128 *NANAttribute.DataCluster.empty.unsafeMutableAddressor()
{
  if (qword_10058AB50 != -1)
  {
    swift_once();
  }

  return &static NANAttribute.DataCluster.empty;
}

uint64_t static NANAttribute.DataCluster.empty.getter()
{
  if (qword_10058AB50 != -1)
  {
    swift_once();
  }

  v2 = static NANAttribute.DataCluster.empty;
  sub_1002785A4(&v2, &v1);
  return v2;
}

uint64_t sub_100245DB4()
{
  v1 = 0x6C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x656C756465686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4972657473756C63;
  }
}

uint64_t sub_100245E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002839FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100245E48(uint64_t a1)
{
  v2 = sub_1002785DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100245E84(uint64_t a1)
{
  v2 = sub_1002785DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.DataCluster.encode(to:)(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v16 = a3;
  v17 = a2 >> 24;
  v18 = HIDWORD(a2);
  v19 = a2 >> 40;
  v7 = sub_10005DC58(&qword_100592288, &qword_10049F8B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002785DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = a2;
  BYTE1(v21) = v5;
  BYTE2(v21) = v6;
  BYTE3(v21) = v17;
  BYTE4(v21) = v18;
  BYTE5(v21) = v19;
  v22 = 0;
  sub_10008A490();
  v13 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    v14 = v16;
    LOBYTE(v21) = BYTE6(a2);
    v22 = 1;
    sub_100278630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v14;
    v22 = 2;
    sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
    sub_100278684();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.DataCluster.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);

  NANAttribute.PublicAvailability.hash(into:)(a1, a3);
}

Swift::Int NANAttribute.DataCluster.hashValue.getter(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  NANAttribute.PublicAvailability.hash(into:)(v11, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100246294()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  NANAttribute.PublicAvailability.hash(into:)(v10, v1);
  return Hasher._finalize()();
}

void sub_10024636C(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);

  NANAttribute.PublicAvailability.hash(into:)(a1, v3);
}

Swift::Int sub_10024641C()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  NANAttribute.PublicAvailability.hash(into:)(v10, v1);
  return Hasher._finalize()();
}

uint64_t sub_1002464F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026B5D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t NANAttribute.DeviceLink.Control.setupReason.getter(char a1)
{
  v1 = sub_100038CD4(6, 2uLL, a1);
  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

CoreP2P::NANAttribute::DeviceLink::Status_optional __swiftcall NANAttribute.DeviceLink.Status.init(rawValue:)(CoreP2P::NANAttribute::DeviceLink::Status_optional rawValue)
{
  if (rawValue.value >= CoreP2P_NANAttribute_DeviceLink_Status_unknownDefault)
  {
    return 3;
  }

  return rawValue;
}

uint64_t NANAttribute.DeviceLink.type.getter(unsigned int a1)
{
  v1 = (a1 >> 8) & 0xF;
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t NANAttribute.DeviceLink.status.getter(unsigned __int16 a1)
{
  if ((a1 >> 12) >= 3u)
  {
    return 3;
  }

  else
  {
    return a1 >> 12;
  }
}

uint64_t NANAttribute.DeviceLink.peerID.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 5) = BYTE1(result) & 1;
  return result;
}

void NANAttribute.DeviceLink.hash(into:)(uint64_t a1, unint64_t a2, Swift::UInt64 a3, char a4, uint64_t a5)
{
  v10 = a2 >> 8;
  v11 = a2 >> 16;
  v12 = a2 >> 24;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  if ((a2 & 0x10000000000) != 0)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = HIDWORD(a2);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v13);
  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a3);
  }

  NANAttribute.PublicAvailability.hash(into:)(a1, a5);
}

Swift::Int NANAttribute.DeviceLink.hashValue.getter(unint64_t a1, Swift::UInt64 a2, char a3, uint64_t a4)
{
  v8 = a1 >> 8;
  v9 = a1 >> 16;
  v10 = a1 >> 24;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if ((a1 & 0x10000000000) != 0)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = HIDWORD(a1);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v11);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  NANAttribute.PublicAvailability.hash(into:)(v13, a4);
  return Hasher._finalize()();
}

Swift::Int sub_100246B8C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 3);
  v6 = *v0;
  Hasher.init(_seed:)();
  NANAttribute.DeviceLink.hash(into:)(v8, v6 | (v1 << 32) | ((v2 & 1) << 40), v3, v4 & 1, v5);
  return Hasher._finalize()();
}

unint64_t sub_100246C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10027541C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t NANAttribute.DeviceLink.init(from:)(uint64_t *a1)
{
  result = sub_10027541C(a1);
  if (!v1)
  {
    return result & 0xFFFFFFFFFFLL | (((result >> 40) & 1) << 40);
  }

  return result;
}

uint64_t NANAttribute.DeviceLink.encode(to:)(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v13, v14);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v5)
  {
    return sub_100002A00(v13);
  }

  LOBYTE(v15) = BYTE1(a2);
  sub_100031694(v13, v14);
  sub_10005DC58(&qword_1005922B8, &qword_10049F8C8);
  sub_10000CADC(&qword_1005922C0, &qword_1005922B8, &qword_10049F8C8);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LOBYTE(v15) = BYTE2(a2);
  sub_100031694(v13, v14);
  sub_1002782D4();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LOBYTE(v15) = BYTE3(a2);
  sub_100031694(v13, v14);
  sub_10027875C();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if ((a2 & 0x10000000000) != 0)
  {
    v12 = a5;
  }

  else
  {
    v12 = a5;
    if ((a2 & 0x1000000) != 0)
    {
      sub_100031694(v13, v14);
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }
  }

  if ((a4 & 1) != 0 || (a2 & 0x10000000) == 0)
  {
LABEL_12:
    if (*(v12 + 16))
    {
      if ((a2 & 0x2000000) != 0)
      {
        v15 = v12;
        sub_100031694(v13, v14);
        sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
        sub_100278684();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      }
    }

    return sub_100002A00(v13);
  }

  if (!(a3 >> 26))
  {
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100247064()
{
  if (*v0)
  {
    result = 0x4C6D756D6978616DLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1002470B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004BD850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C6D756D6978616DLL && a2 == 0xEE0079636E657461)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1002471A0(uint64_t a1)
{
  v2 = sub_1002787B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002471DC(uint64_t a1)
{
  v2 = sub_1002787B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.DeviceLinkQoS.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_1005922D0, &qword_10049F8D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002787B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void NANAttribute.DeviceLinkQoS.hash(into:)(int a1, unsigned int a2)
{
  v2 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int NANAttribute.DeviceLinkQoS.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100247464()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1002474C4()
{
  v1 = *(v0 + 2);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100247504()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100247560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026BF80(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
  }

  return result;
}

unint64_t NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite.mapID.getter(char a1)
{
  if (a1)
  {
    return 256;
  }

  else
  {
    return sub_100038CD4(1, 4uLL, a1) & 0xF;
  }
}

uint64_t NANAttribute.UnalignedSchedule.unalignedWindowControl.setter(uint64_t result)
{
  *(v1 + 18) = result;
  *(v1 + 19) = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.UnalignedSchedule.entry.setter(uint64_t result, __int16 a2)
{
  *(v2 + 20) = result;
  *(v2 + 28) = a2;
  return result;
}

uint64_t static NANAttribute.UnalignedSchedule.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&var10[4] = HIDWORD(a7);
  *&var10[8] = a8;
  v8 = *&var10[4];
  *var10 = a3;
  var10[2] = BYTE2(a3);
  var10[3] = BYTE3(a3);
  *&var10[4] = __PAIR64__(a4, HIDWORD(a3));
  *&var10[12] = WORD2(a4);
  v9 = *var10;
  v10 = *&var10[8];
  *var10 = a7;
  var10[2] = BYTE2(a7);
  var10[3] = BYTE3(a7);
  *&var10[4] = v8;
  *&var10[12] = WORD2(a8);
  return sub_100266EAC(a1 & 0xFFFFFFFF0000FFFFLL, a2, v9, v10, a5 & 0xFFFFFFFF0000FFFFLL, a6, *var10, *&var10[8]);
}

void NANAttribute.UnalignedSchedule.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  v17 = HIDWORD(a4);
  v18 = a5;
  v8 = a2 >> 8;
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = a4 >> 8;
  v12 = BYTE3(a4);
  v16 = WORD1(a5);
  v13 = WORD2(a5);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(v11);
  if (v12)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = a4 >> 16;
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v14);
  if (v13 >> 8 >= 0xFF)
  {
    goto LABEL_5;
  }

  Hasher._combine(_:)(1u);
  if ((v13 & 0x100) == 0)
  {
    v15 = v17;
    goto LABEL_8;
  }

  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(HIWORD(v17));
  Hasher._combine(_:)(v18);
  if ((a5 & 0x100000000) != 0)
  {
LABEL_5:
    v15 = 0;
LABEL_8:
    Hasher._combine(_:)(v15);
    return;
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v16);
}

Swift::Int NANAttribute.UnalignedSchedule.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  *&v13 = a3;
  *(&v13 + 1) = a4;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = BYTE3(a3);
  v10 = HIDWORD(a4);
  Hasher.init(_seed:)();
  LOBYTE(v12) = v4;
  BYTE1(v12) = v7;
  BYTE2(v12) = v8;
  BYTE3(v12) = v9;
  *(&v12 + 4) = *(&v13 + 4);
  WORD6(v12) = v10;
  NANAttribute.UnalignedSchedule.hash(into:)(&v13, a1 & 0xFFFFFFFF0000FFFFLL, a2, v12, *(&v12 + 1));
  return Hasher._finalize()();
}

Swift::Int sub_100247B18()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *(v0 + 18);
  v4 = *(v0 + 19);
  v5 = *(v0 + 10);
  v6 = v0[14];
  v7 = *v0;
  v8 = *(v0 + 1);
  Hasher.init(_seed:)();
  LOWORD(v10) = v2;
  BYTE2(v10) = v3;
  BYTE3(v10) = v4 & 1;
  *(&v10 + 4) = v5;
  WORD6(v10) = v6;
  NANAttribute.UnalignedSchedule.hash(into:)(&v11, v7 | (v8 << 32), v1, v10, *(&v10 + 1));
  return Hasher._finalize()();
}

void sub_100247BB4(int a1)
{
  v2 = v1[8];
  BYTE2(v3) = *(v1 + 18);
  BYTE3(v3) = *(v1 + 19) & 1;
  *(&v3 + 4) = *(v1 + 10);
  WORD6(v3) = v1[14];
  NANAttribute.UnalignedSchedule.hash(into:)(a1, *v1 | (*(v1 + 1) << 32), *(v1 + 1), v3, *(&v3 + 1));
}

Swift::Int sub_100247BF8()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *(v0 + 18);
  v4 = *(v0 + 19);
  v5 = *(v0 + 10);
  v6 = v0[14];
  v7 = *v0;
  v8 = *(v0 + 1);
  Hasher.init(_seed:)();
  LOWORD(v10) = v2;
  BYTE2(v10) = v3;
  BYTE3(v10) = v4 & 1;
  *(&v10 + 4) = v5;
  WORD6(v10) = v6;
  NANAttribute.UnalignedSchedule.hash(into:)(&v11, v7 | (v8 << 32), v1, v10, *(&v10 + 1));
  return Hasher._finalize()();
}

uint64_t sub_100247C90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100272DB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = BYTE2(v6);
    *(a2 + 19) = BYTE3(v6);
    *(a2 + 20) = __PAIR64__(v7, HIDWORD(v6));
    *(a2 + 28) = WORD2(v7);
  }

  return result;
}

uint64_t NANAttribute.UnalignedSchedule.init(from:)(uint64_t *a1)
{
  result = sub_100272DB8(a1);
  if (!v1)
  {
    return result & 0xFFFFFFFF0000FFFFLL;
  }

  return result;
}

uint64_t sub_100247D70(void *a1)
{
  LOWORD(v3) = v1[8];
  BYTE2(v3) = *(v1 + 18);
  BYTE3(v3) = *(v1 + 19) & 1;
  *(&v3 + 4) = *(v1 + 10);
  WORD6(v3) = v1[14];
  return NANAttribute.UnalignedSchedule.encode(to:)(a1, *v1 | (*(v1 + 1) << 32), *(v1 + 1), v3, *(&v3 + 1));
}

uint64_t NANAttribute.UnalignedSchedule.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = WORD2(a5);
  v7 = BYTE2(a4);
  v18 = a3;
  v16[0] = a4;
  v16[1] = a5;
  v8 = BYTE3(a4);
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v5)
  {
    return sub_100002A00(v16);
  }

  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v16, v17);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v16, v17);
  sub_100278804();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v10 = v8;
  if (HIBYTE(v6) > 0xFEu)
  {
    v10 = 1;
  }

  if (v10)
  {
    return sub_100002A00(v16);
  }

  if ((v6 & 0x100) != 0)
  {
    v12 = sub_100038CD4(0, 2uLL, v7);
    if ((v12 - 2) >= 2 && v12)
    {
      if (v12 != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = sub_100038CD4(0, 2uLL, v7);
      if (v13 < 2)
      {
        return sub_100002A00(v16);
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_19;
        }

        return sub_100002A00(v16);
      }
    }

    sub_100031694(v16, v17);
    sub_1000E26F0();
    goto LABEL_17;
  }

  v11 = sub_100038CD4(0, 2uLL, v7);
  if (v11 - 1 < 3)
  {
    return sub_100002A00(v16);
  }

  if (!v11)
  {
    sub_100031694(v16, v17);
    sub_100278858();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v16, v17);
    sub_1000E27C8();
LABEL_17:
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    return sub_100002A00(v16);
  }

LABEL_19:
  sub_10000B02C();
  swift_allocError();
  *v15 = xmmword_10047CE70;
  *(v15 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002481DC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a1[8];
  BYTE2(v5) = *(a1 + 18);
  BYTE3(v5) = *(a1 + 19) & 1;
  *(&v5 + 4) = *(a1 + 10);
  WORD6(v5) = a1[14];
  v3 = v5;
  LOWORD(v5) = a2[8];
  BYTE2(v5) = *(a2 + 18);
  BYTE3(v5) = *(a2 + 19) & 1;
  *(&v5 + 4) = *(a2 + 10);
  WORD6(v5) = a2[14];
  return sub_100266EAC(*a1 | (*(a1 + 1) << 32), *(a1 + 1), v3, *(&v3 + 1), *a2 | (*(a2 + 1) << 32), *(a2 + 1), v5, *(&v5 + 1));
}

uint64_t NANAttribute.RangingInformation.lastMovementIndication.setter(uint64_t result)
{
  *(v1 + 1) = result;
  v1[4] = BYTE2(result) & 1;
  v2 = *v1;
  if ((result & 0x10000) != 0)
  {
    if ((*v1 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xF7;
  }

  else
  {
    if ((*v1 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  *v1 = v3;
  return result;
}

char **sub_1002483B4(char **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = **result;
    if ((*result)[4])
    {
      if ((**result & 8) != 0)
      {
        *v2 = v3 & 0xF7;
      }
    }

    else if ((**result & 8) == 0)
    {
      *v2 = v3 | 8;
    }
  }

  return result;
}

uint64_t static NANAttribute.RangingInformation.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    if ((a1 & 0x100000000) != 0)
    {
      if ((a2 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if (WORD1(a1) == WORD1(a2) && (a2 & 0x100000000) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void NANAttribute.RangingInformation.hash(into:)(int a1, uint64_t a2)
{
  Hasher._combine(_:)(a2);
  if ((a2 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(WORD1(a2));
  }
}

Swift::Int NANAttribute.RangingInformation.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(WORD1(a1));
  }

  return Hasher._finalize()();
}

Swift::Int sub_1002484F0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100248574()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1002485D4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

unint64_t sub_100248654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100272C84(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t NANAttribute.RangingInformation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v8 = a2;
  sub_100031694(v6, v7);
  sub_1002788AC();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2 && (a2 & 0x100000000) == 0 && (a2 & 8) != 0)
  {
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v6);
}

uint64_t sub_1002487F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[4];
    if (a1[4])
    {
      if (a2[4])
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 1) != *(a2 + 1))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *sub_100248B30@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1002752A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NANAttribute.RangingSetup.type.getter(unsigned int a1)
{
  v1 = (a1 >> 8) & 0xF;
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t NANAttribute.RangingSetup.status.getter(unsigned __int16 a1)
{
  if (a1 >> 12 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >> 12)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.RangingSetup.fineTimingMeasurementParameters.getter(uint64_t a1, char a2)
{
  *(&v3 + 1) = a2 & 1;
  *&v3 = a1;
  return v3 >> 32;
}

void NANAttribute.RangingSetup.hash(into:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v6 = HIDWORD(a2);
  v8 = a2 >> 8;
  v9 = a2 >> 16;
  v10 = a2 >> 24;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  NANAttribute.PublicAvailability.hash(into:)(a1, a4);
}

Swift::Int NANAttribute.RangingSetup.hashValue.getter(unint64_t a1, char a2, uint64_t a3)
{
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIDWORD(a1));
  }

  NANAttribute.PublicAvailability.hash(into:)(v10, a3);
  return Hasher._finalize()();
}

Swift::Int sub_100248D5C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  NANAttribute.PublicAvailability.hash(into:)(v9, v3);
  return Hasher._finalize()();
}

void sub_100248E30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  v9 = *(v2 + 3);
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  NANAttribute.PublicAvailability.hash(into:)(a1, v6);
}

Swift::Int sub_100248EE0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  NANAttribute.PublicAvailability.hash(into:)(v9, v3);
  return Hasher._finalize()();
}

unint64_t sub_100248FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100274FB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t NANAttribute.RangingSetup.init(from:)(uint64_t *a1)
{
  result = sub_100274FB8(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t NANAttribute.RangingSetup.encode(to:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v10, v11);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v4)
  {
    LOBYTE(v12) = BYTE1(a2);
    sub_100031694(v10, v11);
    sub_10005DC58(&qword_1005922F8, &qword_10049F8D8);
    sub_10000CADC(&qword_100592300, &qword_1005922F8, &qword_10049F8D8);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    LOBYTE(v12) = BYTE2(a2);
    sub_100031694(v10, v11);
    sub_1002782D4();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    LOBYTE(v12) = BYTE3(a2);
    sub_100031694(v10, v11);
    sub_100278900();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if ((a3 & 1) == 0 && (a2 & 0x2000000) != 0)
    {
      LODWORD(v12) = HIDWORD(a2);
      sub_100031694(v10, v11);
      sub_100278954();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }

    if (*(a4 + 16) && (a2 & 0x4000000) != 0)
    {
      v12 = a4;
      sub_100031694(v10, v11);
      sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
      sub_100278684();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }
  }

  return sub_100002A00(v10);
}

uint64_t sub_100249334(uint64_t a1)
{
  v2 = sub_1002789A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249370(uint64_t a1)
{
  v2 = sub_1002789A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024950C(uint64_t a1)
{
  v2 = sub_1002789FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249548(uint64_t a1)
{
  v2 = sub_1002789FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002495C8(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17[3] = a3;
  v9 = sub_10005DC58(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v17 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = a2;
  v21 = 0;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100165E30(&qword_10058E320);
  v15 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v20 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v13, v9);
}

Swift::Int sub_10024982C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 4);
  Hasher.init(_seed:)();
  a4(v9, v6, v7);
  return Hasher._finalize()();
}

uint64_t sub_10024994C(uint64_t a1)
{
  v2 = sub_100278A50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249988(uint64_t a1)
{
  v2 = sub_100278A50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249ADC(uint64_t a1)
{
  v2 = sub_100278AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249B18(uint64_t a1)
{
  v2 = sub_100278AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249C6C(uint64_t a1)
{
  v2 = sub_100278AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249CA8(uint64_t a1)
{
  v2 = sub_100278AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249E04(uint64_t a1)
{
  v2 = sub_100278B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249E40(uint64_t a1)
{
  v2 = sub_100278B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100249EE0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *(a2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      Hasher._combine(_:)(v7);
      --v5;
    }

    while (v5);
  }

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3));
}

Swift::Int sub_100249F4C(uint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(HIBYTE(a2));
  return Hasher._finalize()();
}

uint64_t sub_10024A0AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  result = sub_10026CA00(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8;
  }

  return result;
}

uint64_t NANAttribute.ElementContainer.htCap.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
}

uint64_t NANAttribute.ElementContainer.htCap.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.htinfo.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
}

uint64_t NANAttribute.ElementContainer.htinfo.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 24);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vhtCap.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
}

uint64_t NANAttribute.ElementContainer.vhtCap.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 40);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vhtOp.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
}

uint64_t NANAttribute.ElementContainer.vhtOp.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 56);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.vendorSpec.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
}

uint64_t NANAttribute.ElementContainer.vendorSpec.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 72);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t NANAttribute.ElementContainer.elementIDExt.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
}

uint64_t NANAttribute.ElementContainer.elementIDExt.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 88);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

__n128 NANAttribute.ElementContainer.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10027039C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10024A408()
{
  v1 = *v0;
  v2 = 0x73444970616DLL;
  v3 = 0x49746E656D656C65;
  if (v1 != 6)
  {
    v3 = 0x65756C6156776172;
  }

  v4 = 0x704F746876;
  if (v1 != 4)
  {
    v4 = 0x7053726F646E6576;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F666E697468;
  if (v1 != 2)
  {
    v5 = 0x706143746876;
  }

  if (*v0)
  {
    v2 = 0x7061437468;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10024A4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100283C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024A524(uint64_t a1)
{
  v2 = sub_100278BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024A560(uint64_t a1)
{
  v2 = sub_100278BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ElementContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592378, &qword_10049F910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278BA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOWORD(v12) = *v3;
  BYTE2(v12) = *(v3 + 2);
  v14 = 0;
  sub_1002780DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v14 = 1;
    sub_100278BF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v14 = 2;
    sub_100278C48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = *(v3 + 48);
    v14 = 3;
    sub_100278C9C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    v14 = 4;
    sub_100278CF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 72);
    v13 = *(v3 + 80);
    v14 = 5;
    sub_100278D44();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 88);
    v13 = *(v3 + 96);
    v14 = 6;
    sub_100278D98();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 104);
    v14 = 7;
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    sub_100165E30(&qword_10058E320);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.ElementContainer.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    if ((v2 & 0x100) != 0)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2 * v2;
    }
  }

  Hasher._combine(_:)(v1);
  v3 = *(v0 + 1);
  if (v3)
  {
    v4 = v0[8];
    Hasher._combine(_:)(1u);
    v5 = *(v3 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (v3 + 32);
      do
      {
        v7 = *v6++;
        Hasher._combine(_:)(v7);
        --v5;
      }

      while (v5);
    }

    v8 = v4 >> 8;
    Hasher._combine(_:)(v4);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  Hasher._combine(_:)(v8);
  v9 = *(v0 + 3);
  if (v9)
  {
    v10 = v0[16];
    Hasher._combine(_:)(1u);
    v11 = *(v9 + 16);
    Hasher._combine(_:)(v11);
    if (v11)
    {
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        Hasher._combine(_:)(v13);
        --v11;
      }

      while (v11);
    }

    v14 = v10 >> 8;
    Hasher._combine(_:)(v10);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  Hasher._combine(_:)(v14);
  v15 = *(v0 + 5);
  if (v15)
  {
    v16 = v0[24];
    Hasher._combine(_:)(1u);
    v17 = *(v15 + 16);
    Hasher._combine(_:)(v17);
    if (v17)
    {
      v18 = (v15 + 32);
      do
      {
        v19 = *v18++;
        Hasher._combine(_:)(v19);
        --v17;
      }

      while (v17);
    }

    v20 = v16 >> 8;
    Hasher._combine(_:)(v16);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  Hasher._combine(_:)(v20);
  v21 = *(v0 + 7);
  if (v21)
  {
    v22 = v0[32];
    Hasher._combine(_:)(1u);
    v23 = *(v21 + 16);
    Hasher._combine(_:)(v23);
    if (v23)
    {
      v24 = (v21 + 32);
      do
      {
        v25 = *v24++;
        Hasher._combine(_:)(v25);
        --v23;
      }

      while (v23);
    }

    v26 = v22 >> 8;
    Hasher._combine(_:)(v22);
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  Hasher._combine(_:)(v26);
  v27 = *(v0 + 9);
  if (v27)
  {
    v28 = v0[40];
    Hasher._combine(_:)(1u);
    v29 = *(v27 + 16);
    Hasher._combine(_:)(v29);
    if (v29)
    {
      v30 = (v27 + 32);
      do
      {
        v31 = *v30++;
        Hasher._combine(_:)(v31);
        --v29;
      }

      while (v29);
    }

    v32 = v28 >> 8;
    Hasher._combine(_:)(v28);
  }

  else
  {
    LOBYTE(v32) = 0;
  }

  Hasher._combine(_:)(v32);
  v33 = *(v0 + 11);
  if (v33)
  {
    v34 = v0[48];
    Hasher._combine(_:)(1u);
    v35 = *(v33 + 16);
    Hasher._combine(_:)(v35);
    if (v35)
    {
      v36 = (v33 + 32);
      do
      {
        v37 = *v36++;
        Hasher._combine(_:)(v37);
        --v35;
      }

      while (v35);
    }

    v38 = v34 >> 8;
    Hasher._combine(_:)(v34);
  }

  else
  {
    LOBYTE(v38) = 0;
  }

  Hasher._combine(_:)(v38);
  v39 = *(v0 + 13);
  v40 = *(v39 + 16);
  Hasher._combine(_:)(v40);
  if (v40)
  {
    v41 = (v39 + 32);
    do
    {
      v42 = *v41++;
      Hasher._combine(_:)(v42);
      --v40;
    }

    while (v40);
  }
}

Swift::Int NANAttribute.ElementContainer.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAttribute.ElementContainer.hash(into:)();
  return Hasher._finalize()();
}

__n128 NANAttribute.ElementContainer.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10026CC64(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

Swift::Int sub_10024AC3C()
{
  Hasher.init(_seed:)();
  NANAttribute.ElementContainer.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10024AC90(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s7CoreP2P12NANAttributeO16ElementContainerV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 13) = result;
  *(v1 + 15) = BYTE2(result);
  return result;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.init(network:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  Channel.operatingClass.getter(a4 & 0xFFFFFFFFFFFFLL);

  if ((v4 & 0xFFFFFF00) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = a1[4];
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v17[0] = a2;
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v17[4] = v9;
  v17[5] = v10;
  sub_100031694(v15, v16);
  sub_10008A490();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v14)
  {
    v17[0] = BYTE6(a2);
    v17[1] = HIBYTE(a2);
    *&v17[2] = a3;
    sub_100031694(v15, v16);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v17[0] = BYTE4(a3);
    sub_100031694(v15, v16);
    sub_100277B78();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    *v17 = *(&a3 + 5);
    v17[2] = HIBYTE(a3);
    sub_100031694(v15, v16);
    sub_100278DEC();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    *v17 = a4;
    sub_100031694(v15, v16);
    sub_100278E40();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v15);
}

unint64_t sub_10024AFE0()
{
  v1 = *v0;
  v2 = 1701605234;
  v3 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024B084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100283EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024B0AC(uint64_t a1)
{
  v2 = sub_100285AD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024B0E8(uint64_t a1)
{
  v2 = sub_100285AD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void NANAttribute.ExtendedWLANInfrastructure.hash(into:)(int a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v19 = a4;
  v4 = a3;
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  *v13 = a3 >> 16;
  *v14 = a3 >> 24;
  *v15 = HIDWORD(a3);
  *v16 = a3 >> 40;
  *v17 = HIWORD(a3);
  *v18 = HIBYTE(a3);
  *v20 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20[0]);
}

Swift::Int NANAttribute.ExtendedWLANInfrastructure.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v20 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v10 = HIWORD(a1);
  v11 = HIBYTE(a1);
  *v13 = a2 >> 8;
  *v14 = a2 >> 16;
  *v15 = a2 >> 24;
  *v16 = HIDWORD(a2);
  *v17 = a2 >> 40;
  *v18 = HIWORD(a2);
  *v19 = HIBYTE(a2);
  *v21 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v19[0]);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21[0]);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedWLANInfrastructure.init(from:)(uint64_t *a1)
{
  result = sub_10026ED54(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_10024B420()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  NANAttribute.ExtendedWLANInfrastructure.hash(into:)(&v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_10024B478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026ED54(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t NANAttribute.ExtendedP2POperation.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 7) = result;
  *(v1 + 9) = BYTE2(result);
  return result;
}

unint64_t sub_10024B59C()
{
  v1 = 1701605234;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x657264644163616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024B61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028407C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024B644(uint64_t a1)
{
  v2 = sub_100278E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024B680(uint64_t a1)
{
  v2 = sub_100278E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedP2POperation.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_1005923C8, &qword_10049F918);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278E94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = a2;
  v18 = 0;
  sub_100277C20();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    LOBYTE(v15) = BYTE1(a2);
    BYTE1(v15) = BYTE2(a2);
    BYTE2(v15) = BYTE3(a2);
    HIBYTE(v15) = BYTE4(a2);
    v16 = BYTE5(a2);
    v17 = BYTE6(a2);
    v18 = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = HIBYTE(a2);
    *(&v15 + 1) = a3;
    v18 = 2;
    sub_100278DEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v15) = WORD1(a3);
    HIWORD(v15) = WORD2(a3);
    v18 = 3;
    sub_100278E40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.ExtendedP2POperation.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v11 = a3 >> 8;
  *v12 = a3 >> 16;
  *v13 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12[0]);
  Hasher._combine(_:)(v13[0]);
}

Swift::Int NANAttribute.ExtendedP2POperation.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  *v12 = a2 >> 8;
  *v13 = a2 >> 16;
  *v14 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v12[0]);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedP2POperation.init(from:)(uint64_t *a1)
{
  result = sub_10026B094(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int sub_10024BB3C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void sub_10024BC5C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
}

Swift::Int sub_10024BD38()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

uint64_t sub_10024BE54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026B094(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 12) = WORD2(v5);
  }

  return result;
}

uint64_t NANAttribute.ExtendedIBSS.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 14) = BYTE2(result);
  return result;
}

unint64_t sub_10024BF4C()
{
  v1 = 0x4953534273736269;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x657264644163616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024BFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002841FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024C000(uint64_t a1)
{
  v2 = sub_100278EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C03C(uint64_t a1)
{
  v2 = sub_100278EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedIBSS.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v19) = a4;
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v20 = a3;
  v21 = a2 >> 24;
  v22 = HIDWORD(a2);
  v23 = a2 >> 40;
  v8 = sub_10005DC58(&qword_1005923D8, &qword_10049F920);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278EE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26[0] = a2;
  v26[1] = v6;
  v26[2] = v7;
  v26[3] = v21;
  v26[4] = v22;
  v26[5] = v23;
  v25 = 0;
  sub_10008A490();
  v14 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = HIDWORD(v19);
  v17 = v9;
  v26[0] = BYTE6(a2);
  v26[1] = HIBYTE(a2);
  v18 = HIDWORD(v20);
  *&v26[2] = v20;
  v25 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v26[0] = v18;
  v26[1] = BYTE1(v18);
  v26[2] = BYTE2(v18);
  v25 = 2;
  sub_100278DEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *v26 = v16;
  v25 = 3;
  sub_100278E40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v17 + 8))(v12, v8);
}

void NANAttribute.ExtendedIBSS.hash(into:)(int a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v18 = a4;
  v4 = a3;
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  v11 = HIBYTE(a2);
  v12 = a3 >> 8;
  *v13 = a3 >> 16;
  *v14 = a3 >> 24;
  *v15 = HIDWORD(a3);
  *v16 = a3 >> 40;
  *v17 = HIWORD(a3);
  *v19 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19[0]);
}

Swift::Int NANAttribute.ExtendedIBSS.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v19 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1 >> 8;
  v6 = a1 >> 16;
  v7 = a1 >> 24;
  v8 = HIDWORD(a1);
  v9 = a1 >> 40;
  v10 = HIWORD(a1);
  v11 = HIBYTE(a1);
  *v13 = a2 >> 8;
  *v14 = a2 >> 16;
  *v15 = a2 >> 24;
  *v16 = HIDWORD(a2);
  *v17 = a2 >> 40;
  *v18 = HIWORD(a2);
  *v20 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20[0]);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedIBSS.init(from:)(uint64_t *a1)
{
  result = sub_10026BA2C(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_10024C65C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 11);
  v12 = *(v0 + 12);
  v13 = *(v0 + 13);
  v14 = *(v0 + 14);
  v15 = *(v0 + 16);
  v16 = *(v0 + 18);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
}

Swift::Int sub_10024C780()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + 10);
  v13 = *(v0 + 11);
  v14 = *(v0 + 12);
  v15 = *(v0 + 13);
  v16 = *(v0 + 14);
  v17 = *(v0 + 16);
  v18 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  return Hasher._finalize()();
}

uint64_t sub_10024C8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026BA2C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
    *(a2 + 11) = BYTE3(v5);
    *(a2 + 12) = BYTE4(v5);
    *(a2 + 13) = BYTE5(v5);
    *(a2 + 14) = BYTE6(v5);
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t NANAttribute.ExtendedMesh.operatingChannelInformation.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result);
  return result;
}

uint64_t NANAttribute.ExtendedMesh.meshID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_10024CAB8()
{
  v1 = 0x657264644163616DLL;
  v2 = 0x44496873656DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024CB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024CB64(uint64_t a1)
{
  v2 = sub_100278F3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024CBA0(uint64_t a1)
{
  v2 = sub_100278F3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.ExtendedMesh.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v23 = a3;
  v24 = a2 >> 24;
  v25 = HIDWORD(a2);
  v26 = a2 >> 40;
  v9 = sub_10005DC58(&qword_1005923E8, &qword_10049F928);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v20 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278F3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v28) = a2;
  BYTE1(v28) = v7;
  BYTE2(v28) = v8;
  BYTE3(v28) = v24;
  BYTE4(v28) = v25;
  BYTE5(v28) = v26;
  v30 = 0;
  sub_10008A490();
  v15 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v15)
  {
    v17 = v21;
    v16 = v22;
    LOBYTE(v28) = BYTE6(a2);
    BYTE1(v28) = HIBYTE(a2);
    v18 = v23;
    BYTE2(v28) = v23;
    v30 = 1;
    sub_100278DEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOWORD(v28) = WORD1(v18);
    WORD1(v28) = WORD2(v18);
    v30 = 2;
    sub_100278E40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v17;
    v29 = v16;
    v30 = 3;
    sub_10000AB0C(v17, v16);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v28, v29);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t NANAttribute.ExtendedMesh.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v11 = a3 >> 16;
  *v13 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v13[0]);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.ExtendedMesh.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  *v12 = a2 >> 16;
  *v13 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v12[0]);
  Hasher._combine(_:)(v13[0]);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANAttribute.ExtendedMesh.init(from:)(uint64_t *a1)
{
  result = sub_10026BCD8(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFF00FFLL;
  }

  return result;
}

Swift::Int sub_10024D0A8()
{
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024D1C8()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 10);
  v11 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);

  return Data.hash(into:)();
}

Swift::Int sub_10024D2B8()
{
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024D3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026BCD8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 10) = v6;
    *(a2 + 12) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return result;
}

uint64_t sub_10024D4D4()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x746E4565676E6172;
  v4 = 0x746E4565676E6172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6469737362;
  if (v1 != 1)
  {
    v5 = 0x746E4565676E6172;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10024D5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024D5D0(uint64_t a1)
{
  v2 = sub_100278F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024D60C(uint64_t a1)
{
  v2 = sub_100278F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.FineTimingMeasurementRangeReport.Entry.encode(to:)(void *a1, uint64_t a2, __int16 a3)
{
  v5 = HIDWORD(a2);
  v7 = sub_10005DC58(&qword_1005923F8, &qword_10049F930);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14[-v10];
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278F90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v15 = v5;
    v16 = a3;
    v14[24] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[15] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[14] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[13] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[12] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.FineTimingMeasurementRangeReport.Entry.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = a2 >> 40;
  v6 = HIWORD(a2);
  v7 = HIBYTE(a2);
  v8 = a3 >> 8;
  v9 = a3 >> 16;
  v10 = a3 >> 24;
  v11 = HIDWORD(a3);
  *v12 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12[0]);
}

Swift::Int NANAttribute.FineTimingMeasurementRangeReport.Entry.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = a1 >> 40;
  v6 = HIWORD(a1);
  v7 = HIBYTE(a1);
  v8 = a2 >> 8;
  v9 = a2 >> 16;
  v10 = a2 >> 24;
  *v12 = HIDWORD(a2);
  *v13 = a2 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12[0]);
  Hasher._combine(_:)(v13[0]);
  return Hasher._finalize()();
}

uint64_t NANAttribute.FineTimingMeasurementRangeReport.Entry.init(from:)(uint64_t *a1)
{
  result = sub_10026F378(a1);
  if (v1)
  {
    return v3 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int sub_10024DAA0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = *(v0 + 11);
  v11 = *(v0 + 12);
  v12 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  return Hasher._finalize()();
}

void sub_10024DBAC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int sub_10024DC7C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = *(v0 + 11);
  v11 = *(v0 + 12);
  v12 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  return Hasher._finalize()();
}

uint64_t sub_10024DD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026F378(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
    *(a2 + 11) = BYTE3(v5);
    *(a2 + 12) = BYTE4(v5);
    *(a2 + 13) = BYTE5(v5);
  }

  return result;
}

uint64_t sub_10024DDFC(void *a1)
{
  *(v1 + 12);
  *(v1 + 13);
  return NANAttribute.FineTimingMeasurementRangeReport.Entry.encode(to:)(a1, *v1, *(v1 + 8));
}

uint64_t sub_10024DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10024DF04(uint64_t a1)
{
  v2 = sub_100278FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024DF40(uint64_t a1)
{
  v2 = sub_100278FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.FineTimingMeasurementRangeReport.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100592408, &qword_10049F938);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100278FE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_100592418, &qword_10049F940);
  sub_100279038();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10024E12C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v9, v9[3]);
  v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v7 = sub_100237864(v6 << 8, v9);
  sub_100002A00(v9);
  result = sub_100002A00(a1);
  *a2 = v7;
  return result;
}

void *NANAttribute.FineTimingMeasurementRangeReport.init(from:)(uint64_t *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  sub_100031694(v6, v6[3]);
  v3 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v4 = sub_100237864(v3 << 8, v6);
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v4;
}