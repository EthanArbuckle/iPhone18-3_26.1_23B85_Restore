void sub_10011B054()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B0AC()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B104()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B15C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B1B4()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B20C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B264()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B2BC()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_10011B314()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10011B5C0(uint64_t a1)
{
  v1 = [*(a1 + 40) contactID];
  LogPrintF();
}

uint64_t sub_10011B678(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 40);
  return LogPrintF();
}

void sub_10011B704(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 48) accountID];
  v3 = [a2 contactIdentifier];
  LogPrintF();
}

void sub_10011B790(id *a1, void *a2)
{
  v4 = [*a1 accountID];
  v3 = [a2 contactIdentifier];
  LogPrintF();
}

uint64_t sub_10011BFD4()
{
  if (dword_1001D3F50 <= 90)
  {
    if (dword_1001D3F50 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_10011C82C(os_unfair_lock_s *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock(a1 + 2);
    v3[2](v3);

    os_unfair_lock_unlock(a1 + 2);
  }
}

uint64_t sub_10011CF24(unsigned int a1, char a2)
{
  if (a1 <= 0xD)
  {
    v2 = off_1001AD2F8[a2 & 0xF];
  }

  return LogPrintF();
}

void sub_10011D28C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_10011D358(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_10011D400(void *a1)
{
  v1 = objc_retainBlock(a1);
  LogPrintF();
}

void sub_10011D484(uint64_t a1)
{
  v1 = [*(a1 + 32) destinationDevice];
  LogPrintF();
}

void sub_10011D544(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) serviceType];
  LogPrintF();
}

void sub_10011D5E8(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) serviceType];
  LogPrintF();
}

uint64_t sub_10011D72C(uint64_t a1, uint64_t a2)
{
  [RPNWPeer responseCodeToString:a1];
  v4 = *(a2 + 32);
  return LogPrintF();
}

uint64_t sub_10011D948(void *a1, uint64_t a2)
{
  [a1 length];
  v4 = *(a2 + 32);
  return LogPrintF();
}

void sub_10011D9F8(void *a1)
{
  v2 = [a1 destinationDevice];
  v1 = [v2 name];
  LogPrintF();
}

void sub_10011DAC8(uint64_t a1)
{
  v5 = [*(a1 + 32) destinationDevice];
  v2 = [v5 name];
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  LogPrintF();
}

void sub_10011DB5C(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) destinationDevice];
  v4 = [v7 name];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [RPNWNearbyInvitationPeer responseCodeToString:a2];
  LogPrintF();
}

void sub_10011DC10(uint64_t a1)
{
  v5 = [*(a1 + 32) destinationDevice];
  v2 = [v5 name];
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  LogPrintF();
}

uint64_t sub_10011DE78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a2 + 8);
  return LogPrintF();
}

void sub_10011DF38(void *a1)
{
  v1 = [a1 connectionUUID];
  LogPrintF();
}

void sub_10011DF94(void *a1)
{
  v1 = [a1 connectionUUID];
  LogPrintF();
}

uint64_t sub_10011E154(_DWORD *a1)
{
  if (!(!v2 & v1))
  {
    switch(*a1)
    {
      case 0x10000:
      case 0x10001:
      case 0x10002:
      case 0x10003:
      case 0x10004:
      case 0x10005:
      case 0x10006:
      case 0x10007:
      case 0x10008:
      case 0x10009:
      case 0x1000A:
      case 0x1000B:
      case 0x1000C:
      case 0x1000D:
      case 0x1000E:
      case 0x1000F:
      case 0x10010:
      case 0x10011:
      case 0x10012:
      case 0x10013:
      case 0x10014:
      case 0x10015:
      case 0x10016:
      case 0x10017:
      case 0x10018:
      case 0x10019:
      case 0x1001A:
      case 0x1001B:
      case 0x1001C:
      case 0x1001D:
      case 0x1001E:
      case 0x1001F:
        break;
      default:
        JUMPOUT(0);
    }
  }

  v4 = *a1;
  return LogPrintF();
}

uint64_t sub_10011EBD4()
{
  if (dword_1001D42B8 <= 90)
  {
    if (dword_1001D42B8 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_10011EDF0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_10011EE4C(void *a1)
{
  v2 = [a1 currentTransaction];
  v1 = [v2 identifier];
  LogPrintF();
}

void sub_10011F188(void *a1)
{
  v1 = [a1 currentTransaction];
  LogPrintF();
}

void sub_10011F374()
{
  v0 = NSStringFromBOOL();
  LogPrintF();
}

void sub_10011F428(void *a1)
{
  [a1 pendingReceiver];
  v3 = NSStringFromBOOL();
  [a1 pendingInitiator];
  v2 = NSStringFromBOOL();
  LogPrintF();
}

void sub_10011F6D8(void *a1)
{
  v1 = [a1 currentTransaction];
  LogPrintF();
}

void sub_10011F8F4(void *a1)
{
  v1 = [a1 URL];
  LogPrintF();
}

void sub_10011F9B4(void *a1, void *a2)
{
  v4 = [a1 name];
  v3 = [a2 name];
  LogPrintF();
}

void sub_10011FB0C(id *a1)
{
  v4 = [a1[9] browseToken];
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  LogPrintF();
}

void sub_10011FBB4(id *a1, id *a2)
{
  v8 = [a1[9] browseToken];
  v4 = a1;
  v5 = objc_alloc_init(NSMutableString);
  [v5 appendFormat:@"%p", v4];

  v6 = *a2;
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendFormat:@"%p", v6];

  LogPrintF();
}

void sub_10011FCB8(id *a1)
{
  v4 = [a1[9] browseToken];
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  LogPrintF();
}

void sub_10011FECC(void *a1)
{
  v1 = [a1 browseDescriptor];
  LogPrintF();
}

void sub_1001200EC(void *a1)
{
  [a1 localEndpoint];
  objc_claimAutoreleasedReturnValue();
  sub_100088E7C();
  LogPrintF();
}

void sub_100120194(uint64_t a1, id *a2)
{
  v2 = *(a1 + 40);
  v14 = [*a2 listen_framer];
  v3 = objc_alloc_init(NSMutableString);
  sub_10000D530(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  [v3 appendFormat:@"%p"];
  LogPrintF();
}

void sub_10012022C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendFormat:@"%p", v3];

  LogPrintF();
}

void sub_1001202C8()
{
  sub_10000D18C();
  v1 = [v0 flowToken];
  LogPrintF();
}

void sub_100120334(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF();
}

void sub_10012039C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF();
}

void sub_100120404(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF();
}

void sub_10012046C(void *a1)
{
  v1 = [a1 flowToken];
  LogPrintF();
}

void sub_1001204C8(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF();
}

void sub_100120530()
{
  sub_10000D18C();
  v1 = [v0 flowToken];
  LogPrintF();
}

void sub_100120598(void *a1, void *a2)
{
  v3 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  LogPrintF();
}

void sub_100120620(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_100120678()
{
  sub_10000D18C();
  v1 = [v0 flowToken];
  LogPrintF();
}

void sub_1001206F8(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_10012074C(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF();
}

void sub_1001207AC(uint64_t a1)
{
  v14 = [*(a1 + 32) flowToken];
  v2 = [*(a1 + 40) peer];
  v3 = [v2 destinationDevice];
  v4 = [v3 name];
  sub_10000D530(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, v13, v14);
  LogPrintF();
}

void sub_10012085C(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF();
}

void sub_1001208BC(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF();
}

void sub_10012091C(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF();
}

void sub_10012097C(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 40) flowToken];
  v6 = *a2;
  v7 = v4;
  v5 = *(a1 + 40);
  LogPrintF();
}

void sub_1001209F8(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF();
}

void sub_100120A70()
{
  sub_10000D18C();
  v15 = [*(v2 + 32) flowToken];
  v3 = [v1 length];
  v4 = [*v0 peer];
  v5 = [v4 destinationDevice];
  v6 = [v5 name];
  sub_10000D530(v6, v7, v8, v9, v10, v11, v12, v13, v14, v3, v6, v15);
  LogPrintF();
}

void sub_100120B2C(uint64_t a1, id *a2)
{
  v13 = [*(a1 + 32) flowToken];
  v3 = [*a2 outgoingBuffer];
  v4 = [v3 length];
  sub_10000D530(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, 1, v13);
  LogPrintF();
}

void sub_100120BBC(uint64_t a1, uint64_t a2)
{
  v13 = [*(a1 + 32) flowToken];
  v3 = [RPNWPeer responseCodeToString:a2];
  sub_10000D530(v3, v4, v5, v6, v7, v8, v9, v10, v11, v3, v12, v13);
  LogPrintF();
}

void sub_100120C40(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF();
}

void sub_100120E70(uint64_t a1)
{
  v3 = [*(a1 + 32) peer];
  v1 = [v3 destinationDevice];
  v2 = [v1 name];
  LogPrintF();
}

void sub_100120F90(void *a1, uint64_t a2)
{
  [a1 length];
  v5 = [*(a2 + 32) peer];
  v3 = [v5 destinationDevice];
  v4 = [v3 name];
  LogPrintF();
}

void sub_100121554(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF();
}

void sub_1001215B0(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF();
}

void sub_10012160C(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF();
}

void sub_100121668(void *a1)
{
  [a1 browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001216BC(uint64_t a1)
{
  [*(a1 + 32) browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF();
}

void sub_100121728(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF();
}

void sub_1001217E4(void *a1)
{
  [a1 browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_100088E7C();
  LogPrintF();
}

void sub_1001219A8(void *a1)
{
  v1 = [a1 flowToken];
  LogPrintF();
}

void sub_100121A04(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_100121A5C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_100121AB4(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF();
}

void sub_100121B0C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100121B60(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100121C50()
{
  nw_agent_client_copy_endpoint();
  sub_100088E7C();
  LogPrintF();
}

void sub_10012221C(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001222A0(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_10012233C()
{
  sub_10000D18C();
  v2 = v1;
  sub_10008BDDC();
  sub_10000D1B4();
  [v3 appendFormat:@"%p"];

  LogPrintF();
  sub_100003DDC();
}

void sub_1001223BC()
{
  sub_10000D18C();
  v2 = v1;
  sub_10008BDDC();
  sub_10000D1B4();
  [v3 appendFormat:@"%p"];

  LogPrintF();
  sub_100003DDC();
}

void sub_10012243C()
{
  sub_10000D18C();
  v3 = v2;
  sub_10008BDDC();
  sub_10000D1B4();
  [v4 appendFormat:@"%p"];

  [*v0 isConnected];
  LogPrintF();

  sub_100003DDC();
}

void sub_1001224DC()
{
  sub_10000D18C();
  v3 = v2;
  sub_10008BDDC();
  sub_10000D1B4();
  [v4 appendFormat:@"%p"];

  [*v0 isConnected];
  LogPrintF();

  sub_100003DDC();
}

void sub_10012257C(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationDevice];
  v1 = [v2 name];
  LogPrintF();
}

void sub_100122638(unsigned int *a1, id *a2)
{
  v3 = *a1;
  v4 = a2[15];
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendFormat:@"%p", v4];

  v5 = a2;
  v6 = objc_alloc_init(NSMutableString);
  [v6 appendFormat:@"%p", v5];

  LogPrintF();
}

void sub_100122718(void *a1)
{
  v2 = a1[9];
  v3 = a1;
  v4 = objc_alloc_init(sub_10000D6A4());
  [v4 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_1001227B0(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(sub_10000D6A4());
  [v3 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_1001228D0(void *a1)
{
  v1 = [a1 description];
  LogPrintF();
}

uint64_t sub_100122928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 56);
  v3 = *(v1 + 72);
  return LogPrintF();
}

uint64_t sub_100122978(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  return LogPrintF();
}

void sub_100122A0C(void *a1, void *a2)
{
  v16 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  sub_1000099D4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  LogPrintF();
}

void sub_100122AA0(void *a1, void *a2)
{
  v16 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  sub_1000099D4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  LogPrintF();
}

void sub_100122B34(void *a1, void *a2)
{
  v5 = [a1 flowToken];
  v3 = [a2 peer];
  v4 = [v3 destinationDevice];
  LogPrintF();
}

void sub_100122BDC(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF();
}

void sub_100122C3C(uint64_t a1)
{
  v4 = [*(a1 + 32) flowToken];
  v2 = [*(a1 + 40) peer];
  v3 = [v2 destinationDevice];
  LogPrintF();
}

void sub_100122CD8(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF();
}

void sub_100122D38(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(sub_10000D6A4());
  [v3 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_100122E00(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10000D6A4() browseToken];
  LogPrintF();
}

void sub_100122EEC(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10000D6A4() connection];
  LogPrintF();
}

void sub_100122F98(char a1, void *a2)
{
  if (a1)
  {
    [a2 flowToken];
  }

  else
  {
    [a2 browseToken];
  }
  v2 = ;
  LogPrintF();
}

void sub_10012301C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

void sub_100123174(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF();
}

uint64_t sub_100123200(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_100123288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  [RPNWPeer responseCodeToString:a2];
  v5 = *(a1 + 40);
  return LogPrintF();
}

uint64_t sub_1001232F0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_100123378(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

uint64_t sub_1001233C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

void sub_100123490(void *a1)
{
  v1 = [a1 token];
  LogPrintF();
}

void sub_1001234E8(void *a1)
{
  v1 = [a1 token];
  LogPrintF();
}

void sub_100123540(void *a1)
{
  v1 = [a1 token];
  LogPrintF();
}

void sub_100123598(void *a1)
{
  v2 = [a1 token];
  v3 = [a1 peer];
  v4 = [v3 destinationDevice];
  LogPrintF();
}

void sub_10012363C(uint64_t a1)
{
  v4 = [*(a1 + 32) token];
  v2 = [*(a1 + 32) peer];
  v3 = [v2 destinationDevice];
  LogPrintF();
}

void sub_1001236F4(void *a1, uint64_t a2)
{
  v3 = [a1 flowToken];
  *(a2 + 32);
  LogPrintF();
}

void sub_10012377C(void *a1, uint64_t a2)
{
  v3 = [a1 flowToken];
  [RPNWPeer statusCodeToString:a2];
  LogPrintF();
}

void sub_100123804(void *a1)
{
  v3 = [a1 flowToken];
  v2 = [a1 connection];
  LogPrintF();
}

void sub_10012388C(void *a1)
{
  v1 = [a1 flowToken];
  LogPrintF();
}

uint64_t sub_100123978(void *a1, uint64_t a2)
{
  [a1 length];
  v4 = *(a2 + 32);
  return LogPrintF();
}

void sub_1001239E8(void *a1)
{
  v4 = [a1 name];
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  LogPrintF();
}

void sub_100123B0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) destinationDevice];
  v3 = [v6 name];
  v5 = *(a1 + 56);
  v4 = *(a1 + 48);
  LogPrintF();
}

void sub_100123BA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) destinationDevice];
  v3 = [v6 name];
  v5 = *(a1 + 56);
  v4 = *(a1 + 48);
  LogPrintF();
}

uint64_t sub_100123CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  [RPNWPeer responseCodeToString:a2];
  return LogPrintF();
}

void sub_100123ED8(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF();
}

void sub_100123F38(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF();
}

void sub_100123F98(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF();
}

uint64_t sub_10012400C(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = a1[6];
  return LogPrintF();
}

void sub_100124370(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [v8 bleDeviceAddress];
  if ([v7 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1001243FC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 bleDevice];
  v5 = [v4 advertisementFields];
  CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    v7 = objc_alloc_init(CURangingPeer);
    [v7 setDeviceAddress:v6];
    v8 = [v9 model];
    [v7 setDeviceModel:v8];

    [*(a1 + 32) addObject:v7];
  }
}

uint64_t sub_1001244F8(uint64_t a1)
{
  v1 = *(*a1 + 12);
  if ((v1 - 1) <= 2)
  {
    v2 = (&off_1001AEBC8)[v1 - 1];
  }

  v4 = *(*a1 + 12);
  return LogPrintF();
}

uint64_t sub_100125DD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return LogPrintF();
}

uint64_t sub_100125ED4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  return LogPrintF();
}

uint64_t sub_100126014(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  return LogPrintF();
}

void sub_100126058(char a1)
{
  v1 = [NSNumber numberWithBool:a1 & 1];
  LogPrintF();
}

uint64_t sub_1001262EC(_DWORD *a1, uint64_t a2)
{
  v3 = *a1 - 1;
  if (v3 <= 2)
  {
    v4 = (&off_1001AEBC8)[v3];
  }

  [*(a2 + 408) count];
  [*(a2 + 416) count];
  return LogPrintF();
}

void sub_100126548()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF();
}

void sub_1001265B8()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100126658()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF();
}

void sub_1001266C8()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF();
}

void sub_1001267B8()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF();
}

void sub_100126B10()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126B70()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126BD0()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126C30()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126C90()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126CF0()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

void sub_100126D50()
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C();
  }
}

uint64_t sub_100126DB0(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C();
    }
  }

  return result;
}

uint64_t sub_100126E04(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C();
    }
  }

  return result;
}

void sub_100126E9C(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}

uint64_t sub_100127C0C(uint64_t a1)
{
  [sub_1000454C4(a1) rssiThreshold];
  v3 = *v1;
  return LogPrintF();
}

void sub_100127E88()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_100127EE0()
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_10012800C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10012806C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128214(void *a1)
{
  [a1 modelIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_1001283CC()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128430()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001284A4()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128504()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128564()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001285D0()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10012863C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_10012872C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF();
}

void sub_100128784()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF();
}

void sub_100128870()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001288E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CUDescriptionWithLevel();
  v5 = [*(a2 + 160) objectForKeyedSubscript:a3];
  LogPrintF();
}

void sub_100128990(void *a1, uint64_t a2, uint64_t *a3)
{
  *a3 = [a1 identifier];
  v5 = [a1 bleDevice];
  v6 = [v5 rapportIdentifier];
  LogPrintF();
}

void sub_100128A24(void *a1)
{
  [a1 serviceType];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF();
}

void sub_100128A7C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128ADC()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128B3C()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128BDC(void *a1)
{
  [a1 serviceType];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF();
}

void sub_100128C74()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100128CE0()
{
  v0 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100129140(uint64_t *a1)
{
  v1 = *a1;
  v2 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_100129524(uint64_t *a1)
{
  v1 = *a1;
  v2 = CUDescriptionWithLevel();
  LogPrintF();
}

void sub_1001295A4(void *a1)
{
  v1 = [a1 angelJobLabel];
  LogPrintF();
}

void sub_100129600(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 identifier];
  v5 = *(a3 + 320);
  LogPrintF();
}

void sub_100129840()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1001298B0()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1001299E0(void *a1)
{
  v2 = [a1 idsDeviceIdentifier];
  [a1 cameraCapabilityRequestIsActive];
  LogPrintF();
}

uint64_t sub_100129A60(uint64_t a1, id *a2)
{
  v2 = *(a1 + 56);
  [*a2 statusFlags];
  return LogPrintF();
}

void sub_100129ADC(void *a1, id *a2)
{
  v2 = [*a2 _findMatchingDeviceWithIdentifier:*a1];
  LogPrintF();
}

void sub_100129D9C()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t sub_100129E0C(unsigned int a1)
{
  if (a1 <= 5)
  {
    v1 = (&off_1001AF280)[a1];
  }

  return LogPrintF();
}

uint64_t sub_100129E88(uint64_t a1)
{
  v1 = *(*a1 + 468);
  if (v1 <= 3)
  {
    v2 = (&off_1001AF2B0)[v1];
  }

  v4 = *(*a1 + 468);
  return LogPrintF();
}

uint64_t sub_10012A080()
{
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_10012A118(int a1, uint64_t a2)
{
  v3 = (&off_1001AF2D0)[a1 - 1];
  v4 = *(a2 + 32);
  return LogPrintF();
}

uint64_t sub_10012A1AC(unint64_t a1)
{
  if (a1 <= 7)
  {
    v1 = (&off_1001AF2F0)[a1];
  }

  return LogPrintF();
}

void sub_10012A20C(id *a1)
{
  v1 = [*a1 accountID];
  LogPrintF();
}

void sub_10012A2AC()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100003DE8();
  }
}

void sub_10012A328()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100003DE8();
  }
}

void sub_10012A498(void *a1)
{
  v1 = [a1 bleDevice];
  v2 = [v1 rapportIdentifier];
  LogPrintF();
}

uint64_t sub_10012A66C(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 56) + 557);
  if (v1 <= 3)
  {
    v2 = (&off_1001AF330)[v1];
  }

  return LogPrintF();
}

void sub_10012A6D8(void *a1)
{
  [a1 requestID];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

void sub_10012A72C(void *a1)
{
  [a1 eventID];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF();
}

uint64_t sub_10012A780(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_10012A7C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

void sub_10012ACD8(uint64_t a1)
{
  [sub_1000454C4(a1) deviceConfirmedIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF();
}

uint64_t sub_10012AD30(id *a1, char a2)
{
  [*a1 processIdentifier];
  v4 = (&off_1001AF330)[a2];
  return LogPrintF();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}