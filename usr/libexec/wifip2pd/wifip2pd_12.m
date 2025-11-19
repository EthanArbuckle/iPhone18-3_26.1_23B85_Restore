uint64_t IO80211Driver<>.registerService(active:keyData:valueData:)(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v137[4] = 0;
  *&v137[18] = 0;
  *v137 = 1;
  *&v137[10] = a1 ^ 1u;
  KeyPath = swift_getKeyPath();
  v14 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOWORD(v16) = v15;

  if (v16)
  {
LABEL_323:
    __break(1u);
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v17)
  {
    if (a2 == a2 >> 32)
    {
LABEL_14:
      *&v137[16] = 0;
      return sub_100113628(v137, &v138, v130, a6, a7, a8, &__src);
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  if (a5 >> 60 == 15)
  {
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        LODWORD(v18) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_287:
          __break(1u);
          goto LABEL_288;
        }

        v18 = v18;
LABEL_26:
        v16 = v18 + 4;
        if (__OFADD__(v18, 4))
        {
LABEL_263:
          __break(1u);
          goto LABEL_264;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_265:
          __break(1u);
          goto LABEL_266;
        }

        if (v16 >> 16)
        {
LABEL_267:
          __break(1u);
          goto LABEL_268;
        }

        v26 = v14 + 7;
        if (__OFADD__(v14, 7))
        {
LABEL_269:
          __break(1u);
          goto LABEL_270;
        }

        if (v17 != 2)
        {
          if (v17 == 1)
          {
            LODWORD(v27) = HIDWORD(a2) - a2;
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_289:
              __break(1u);
              goto LABEL_290;
            }

            v27 = v27;
            goto LABEL_48;
          }

          goto LABEL_47;
        }

LABEL_44:
        v34 = *(a2 + 16);
        v33 = *(a2 + 24);
        v23 = __OFSUB__(v33, v34);
        v27 = v33 - v34;
        if (!v23)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_47:
        v27 = BYTE6(a3);
LABEL_48:
        a4 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
LABEL_272:
          __break(1u);
          goto LABEL_273;
        }

        KeyPath = swift_slowAlloc();
        if (v17 <= 1)
        {
          if (!v17)
          {
            v29 = BYTE6(a3);
            goto LABEL_80;
          }

          goto LABEL_77;
        }

        if (v17 != 2)
        {
          v29 = 0;
          goto LABEL_80;
        }

        v36 = *(a2 + 16);
        v35 = *(a2 + 24);
        v23 = __OFSUB__(v35, v36);
        v29 = v35 - v36;
        if (!v23)
        {
LABEL_80:
          v23 = __OFADD__(v29, 7);
          v43 = v29 + 7;
          if (!v23)
          {
            if ((v43 & 0x8000000000000000) == 0)
            {
              if (!(v43 >> 16))
              {
                *&v137[16] = v43;
                *KeyPath = *v137;
                *(KeyPath + 16) = *&v137[16];
                v44 = KeyPath + v14;
                *v44 = 1;
                *(v44 + 1) = v16;
                *(v44 + 3) = 0;
                *(v44 + 7) = 0;
                if (v17 <= 1)
                {
                  if (!v17)
                  {
                    __src = a2;
                    v132 = a3;
                    v133 = BYTE2(a3);
                    v134 = BYTE3(a3);
                    v135 = BYTE4(a3);
                    v136 = BYTE5(a3);
                    memcpy((KeyPath + v26), &__src, BYTE6(a3));
LABEL_232:
                    v109 = *(a8 + 8);
                    v110 = *(a7 + 8);
                    swift_getAssociatedTypeWitness();
                    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                    sub_10010F778(120, KeyPath, KeyPath + a4, a6, v109, v110, AssociatedConformanceWitness);
                  }

LABEL_104:
                  if (a2 >> 32 >= a2)
                  {
                    v52 = __DataStorage._bytes.getter();
                    if (!v52)
                    {
                      __DataStorage._length.getter();
LABEL_325:
                      __break(1u);
LABEL_326:
                      __break(1u);
                      goto LABEL_327;
                    }

                    v53 = v52;
                    v54 = __DataStorage._offset.getter();
                    if (!__OFSUB__(a2, v54))
                    {
                      v55 = (a2 - v54 + v53);
                      v56 = __DataStorage._length.getter();
                      if (v55)
                      {
                        if (v56 >= (a2 >> 32) - a2)
                        {
                          v57 = (a2 >> 32) - a2;
                        }

                        else
                        {
                          v57 = v56;
                        }

                        v58 = (KeyPath + v26);
                        v59 = v55;
LABEL_231:
                        memmove(v58, v59, v57);
                        goto LABEL_232;
                      }

                      goto LABEL_325;
                    }

                    goto LABEL_297;
                  }

                  goto LABEL_295;
                }

                if (v17 != 2)
                {
                  goto LABEL_232;
                }

                v17 = *(a2 + 16);
                a5 = *(a2 + 24);
                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v46 = v45;
                  v47 = __DataStorage._offset.getter();
                  if (__OFSUB__(v17, v47))
                  {
LABEL_315:
                    __break(1u);
                    goto LABEL_316;
                  }

                  v48 = (v17 - v47 + v46);
                  goto LABEL_225;
                }

LABEL_224:
                v48 = 0;
LABEL_225:
                v23 = __OFSUB__(a5, v17);
                v107 = a5 - v17;
                if (!v23)
                {
                  v108 = __DataStorage._length.getter();
                  if (v48)
                  {
                    if (v108 >= v107)
                    {
                      v57 = v107;
                    }

                    else
                    {
                      v57 = v108;
                    }

                    v58 = (KeyPath + v26);
                    v59 = v48;
                    goto LABEL_231;
                  }

                  goto LABEL_326;
                }

                goto LABEL_296;
              }

              goto LABEL_275;
            }

LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }

LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        __break(1u);
LABEL_56:
        LODWORD(v30) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
LABEL_292:
          __break(1u);
          goto LABEL_293;
        }

        v30 = v30;
        goto LABEL_59;
      }

LABEL_25:
      v18 = BYTE6(a3);
      goto LABEL_26;
    }

    v22 = *(a2 + 16);
    v21 = *(a2 + 24);
    v23 = __OFSUB__(v21, v22);
    v18 = v21 - v22;
    if (!v23)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (v17 != 2)
  {
    if (v17 == 1)
    {
      LODWORD(v20) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      v20 = v20;
    }

    else
    {
      v20 = BYTE6(a3);
    }

    goto LABEL_35;
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  v23 = __OFSUB__(v24, v25);
  v20 = v24 - v25;
  if (v23)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_35:
  v23 = __OFADD__(v20, 2);
  v28 = v20 + 2;
  if (v23)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v23 = __OFADD__(v28, 4);
  v29 = v28 + 4;
  if (v23)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v26 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v26)
    {
      v30 = BYTE6(a5);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v26 != 2)
  {
    v30 = 0;
    goto LABEL_59;
  }

  v32 = *(a4 + 16);
  v31 = *(a4 + 24);
  v23 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v23)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_59:
  v37 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (v37 >> 16)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  if (v17 == 2)
  {
    v39 = *(a2 + 16);
    v38 = *(a2 + 24);
    v16 = v38 - v39;
    if (__OFSUB__(v38, v39))
    {
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }
  }

  else
  {
    if (v17 != 1)
    {
      LOWORD(v16) = BYTE6(a3);
      if (v26 <= 1)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_290:
      __break(1u);
      goto LABEL_291;
    }

    v16 = HIDWORD(a2) - a2;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_262;
  }

  if (v16 >> 16)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  if (v26 <= 1)
  {
LABEL_70:
    if (!v26)
    {
      LOWORD(v40) = BYTE6(a5);
      goto LABEL_96;
    }

    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

    v40 = HIDWORD(a4) - a4;
    goto LABEL_92;
  }

LABEL_73:
  if (v26 != 2)
  {
LABEL_95:
    LOWORD(v40) = 0;
    goto LABEL_96;
  }

  v42 = *(a4 + 16);
  v41 = *(a4 + 24);
  v40 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    __break(1u);
LABEL_77:
    LODWORD(v29) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    v29 = v29;
    goto LABEL_80;
  }

LABEL_92:
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (v40 >> 16)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_96:
  v126 = v14 + 5;
  if (__OFADD__(v14, 5))
  {
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v51 = *(a2 + 16);
      v50 = *(a2 + 24);
      v23 = __OFSUB__(v50, v51);
      v49 = v50 - v51;
      if (v23)
      {
        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v17)
  {
    LODWORD(v49) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

    v49 = v49;
  }

  else
  {
    v49 = BYTE6(a3);
  }

  v23 = __OFADD__(v126, v49);
  v60 = v126 + v49;
  if (v23)
  {
    goto LABEL_278;
  }

  v23 = __OFADD__(v60, 4);
  v61 = v60 + 4;
  if (v23)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v124 = v37;
  if (v26 <= 1)
  {
    if (!v26)
    {
      v62 = BYTE6(a5);
      goto LABEL_127;
    }

    goto LABEL_124;
  }

  if (v26 != 2)
  {
    v62 = 0;
    goto LABEL_127;
  }

  v64 = *(a4 + 16);
  v63 = *(a4 + 24);
  v23 = __OFSUB__(v63, v64);
  v62 = v63 - v64;
  if (v23)
  {
    __break(1u);
LABEL_124:
    LODWORD(v62) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    v62 = v62;
  }

LABEL_127:
  v123 = v40;
  if (__OFADD__(v61, v62))
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v122 = v61 + v62;
  result = swift_slowAlloc();
  v65 = result;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v66 = BYTE6(a3);
      goto LABEL_138;
    }

    goto LABEL_135;
  }

  if (v17 != 2)
  {
    v66 = 0;
    goto LABEL_138;
  }

  v68 = *(a2 + 16);
  v67 = *(a2 + 24);
  v23 = __OFSUB__(v67, v68);
  v66 = v67 - v68;
  if (v23)
  {
    __break(1u);
LABEL_135:
    LODWORD(v66) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v66 = v66;
  }

LABEL_138:
  v23 = __OFADD__(v66, 5);
  v69 = v66 + 5;
  if (v23)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v23 = __OFADD__(v69, 4);
  v70 = v69 + 4;
  if (v23)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      v71 = BYTE6(a5);
      goto LABEL_150;
    }

    goto LABEL_147;
  }

  if (v26 != 2)
  {
    v71 = 0;
    goto LABEL_150;
  }

  v73 = *(a4 + 16);
  v72 = *(a4 + 24);
  v23 = __OFSUB__(v72, v73);
  v71 = v72 - v73;
  if (v23)
  {
    __break(1u);
LABEL_147:
    LODWORD(v71) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v71 = v71;
  }

LABEL_150:
  v23 = __OFADD__(v70, v71);
  v74 = v70 + v71;
  if (v23)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  if ((v74 & 0x8000000000000000) != 0)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (v74 >> 16)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  *&v137[16] = v74;
  *result = *v137;
  *(result + 16) = *&v137[16];
  v75 = result + v14;
  *v75 = 2;
  *(v75 + 1) = v124;
  *(v75 + 3) = v16;
  *(v75 + 5) = 0;
  v125 = result;
  if (v17 <= 1)
  {
    if (!v17)
    {
      __src = a2;
      v132 = a3;
      v133 = BYTE2(a3);
      v134 = BYTE3(a3);
      v135 = BYTE4(a3);
      v76 = BYTE6(a3);
      v136 = BYTE5(a3);
      result = memcpy((result + v126), &__src, BYTE6(a3));
      goto LABEL_178;
    }

    goto LABEL_168;
  }

  if (v17 != 2)
  {
    v76 = 0;
    goto LABEL_178;
  }

  v77 = *(a2 + 16);
  v121 = *(a2 + 24);
  v78 = __DataStorage._bytes.getter();
  if (v78)
  {
    v79 = __DataStorage._offset.getter();
    if (__OFSUB__(v77, v79))
    {
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

    v78 += v77 - v79;
  }

  v23 = __OFSUB__(v121, v77);
  v80 = v121 - v77;
  if (v23)
  {
    goto LABEL_303;
  }

  result = __DataStorage._length.getter();
  if (!v78)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  if (result >= v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = result;
  }

  v65 = v125;
  result = memmove((v125 + v126), v78, v81);
  v83 = *(a2 + 16);
  v82 = *(a2 + 24);
  v76 = v82 - v83;
  if (__OFSUB__(v82, v83))
  {
    __break(1u);
LABEL_168:
    if (a2 >> 32 < a2)
    {
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v84 = __DataStorage._bytes.getter();
    if (!v84)
    {
LABEL_327:
      result = __DataStorage._length.getter();
      goto LABEL_328;
    }

    v85 = v84;
    v86 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v86))
    {
      goto LABEL_304;
    }

    v87 = (a2 - v86 + v85);
    result = __DataStorage._length.getter();
    if (!v87)
    {
LABEL_328:
      __break(1u);
      goto LABEL_329;
    }

    if (result >= (a2 >> 32) - a2)
    {
      v88 = (a2 >> 32) - a2;
    }

    else
    {
      v88 = result;
    }

    result = memmove((v125 + v126), v87, v88);
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_305;
    }

    v76 = HIDWORD(a2) - a2;
    v65 = v125;
  }

LABEL_178:
  if (__OFADD__(v126, v76))
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  v89 = v65 + v126 + v76;
  *v89 = v123;
  *(v89 + 2) = 0;
  *(v89 + 4) = 0;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v91 = *(a4 + 16);
      v26 = *(a4 + 24);
      a4 = __DataStorage._bytes.getter();
      if (a4)
      {
        v92 = __DataStorage._offset.getter();
        if (__OFSUB__(v91, v92))
        {
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        a4 += v91 - v92;
      }

      v23 = __OFSUB__(v26, v91);
      v93 = v26 - v91;
      if (v23)
      {
        goto LABEL_309;
      }

      result = __DataStorage._length.getter();
      if (result >= v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = result;
      }

      if (v17 <= 1)
      {
        if (v17)
        {
LABEL_245:
          LODWORD(v95) = HIDWORD(a2) - a2;
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

          v95 = v95;
          goto LABEL_250;
        }

        v95 = BYTE6(a3);
        goto LABEL_250;
      }

LABEL_216:
      if (v17 == 2)
      {
        v104 = *(a2 + 16);
        v103 = *(a2 + 24);
        v23 = __OFSUB__(v103, v104);
        v95 = v103 - v104;
        if (!v23)
        {
          goto LABEL_250;
        }

        __break(1u);
        goto LABEL_220;
      }

      v95 = 0;
LABEL_250:
      v23 = __OFADD__(v126, v95);
      v115 = v126 + v95;
      if (v23)
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v23 = __OFADD__(v115, 4);
      v116 = v115 + 4;
      if (v23)
      {
LABEL_313:
        __break(1u);
        goto LABEL_314;
      }

      if (a4)
      {
        goto LABEL_258;
      }

      __break(1u);
      goto LABEL_254;
    }

    if (v17 <= 1)
    {
      if (v17)
      {
        LODWORD(v94) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v94 = v94;
      }

      else
      {
        v94 = BYTE6(a3);
      }

      goto LABEL_242;
    }

LABEL_212:
    if (v17 != 2)
    {
      v94 = 0;
LABEL_242:
      v23 = __OFADD__(v126, v94);
      v94 += v126;
      if (v23)
      {
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v114 = v125;
      if (v94 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        goto LABEL_259;
      }

      __break(1u);
      goto LABEL_245;
    }

    v102 = *(a2 + 16);
    v101 = *(a2 + 24);
    v23 = __OFSUB__(v101, v102);
    v94 = v101 - v102;
    if (!v23)
    {
      goto LABEL_242;
    }

    __break(1u);
    goto LABEL_216;
  }

  if (!v26)
  {
    __src = a4;
    v132 = a5;
    v133 = BYTE2(a5);
    v134 = BYTE3(a5);
    v135 = BYTE4(a5);
    v136 = BYTE5(a5);
    if (v17 <= 1)
    {
      if (v17)
      {
        LODWORD(v90) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_319:
          __break(1u);
          goto LABEL_320;
        }

        v90 = v90;
      }

      else
      {
        v90 = BYTE6(a3);
      }

      goto LABEL_238;
    }

    if (v17 != 2)
    {
      v90 = 0;
LABEL_238:
      v23 = __OFADD__(v126, v90);
      v112 = v126 + v90;
      if (v23)
      {
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      v23 = __OFADD__(v112, 4);
      v113 = v112 + 4;
      if (v23)
      {
LABEL_310:
        __break(1u);
        goto LABEL_311;
      }

      v114 = v125;
      memcpy((v125 + v113), &__src, BYTE6(a5));
LABEL_259:
      v118 = *(a8 + 8);
      v119 = *(a7 + 8);
      swift_getAssociatedTypeWitness();
      v120 = swift_getAssociatedConformanceWitness();
      sub_10010F778(120, v114, v114 + v122, a6, v118, v119, v120);
    }

    v100 = *(a2 + 16);
    v99 = *(a2 + 24);
    v23 = __OFSUB__(v99, v100);
    v90 = v99 - v100;
    if (!v23)
    {
      goto LABEL_238;
    }

    __break(1u);
    goto LABEL_212;
  }

  v96 = a4;
  v26 = (a4 >> 32) - a4;
  if (a4 >> 32 < a4)
  {
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  a4 = __DataStorage._bytes.getter();
  if (a4)
  {
    v97 = __DataStorage._offset.getter();
    if (__OFSUB__(v96, v97))
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    a4 += v96 - v97;
  }

  result = __DataStorage._length.getter();
  if (result >= v26)
  {
    v94 = v26;
  }

  else
  {
    v94 = result;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      LODWORD(v98) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_322:
        __break(1u);
        goto LABEL_323;
      }

      v98 = v98;
    }

    else
    {
      v98 = BYTE6(a3);
    }

    goto LABEL_255;
  }

LABEL_220:
  KeyPath = v8;
  if (v17 != 2)
  {
LABEL_254:
    v98 = 0;
    goto LABEL_255;
  }

  v106 = *(a2 + 16);
  v105 = *(a2 + 24);
  v23 = __OFSUB__(v105, v106);
  v98 = v105 - v106;
  if (v23)
  {
    __break(1u);
    goto LABEL_224;
  }

LABEL_255:
  v23 = __OFADD__(v126, v98);
  v117 = v126 + v98;
  if (v23)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v23 = __OFADD__(v117, 4);
  v116 = v117 + 4;
  if (v23)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  if (a4)
  {
LABEL_258:
    v114 = v125;
    memmove((v125 + v116), a4, v94);
    goto LABEL_259;
  }

LABEL_330:
  __break(1u);
  return result;
}

uint64_t sub_1000F1A00(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v5 = &v45[-2] - v4;
  v6 = type metadata accessor for AWDLPeer(0);
  sub_100012400(a1 + v6[14], v5, &qword_10058D450, &unk_100486D78);
  v7 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_100016290(v5, &qword_10058D450, &unk_100486D78);
    LOWORD(v8) = 0;
  }

  else
  {
    v9 = &v5[*(v7 + 140)];
    v8 = *v9;
    v10 = v9[4];
    sub_10003B8D4(v5, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v10)
    {
      LOWORD(v8) = 0;
    }

    else if (HIWORD(v8))
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v11 = a1 + v6[12];
  v12 = *(v11 + 40);
  v13 = (a1 + v6[21]);
  if (*(v13 + 4))
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13;
  }

  LODWORD(v15) = HIWORD(v14);
  if (!v12)
  {
    if (!v15)
    {
      LOWORD(v18) = 0;
      LOWORD(v16) = 0;
      LOWORD(v17) = 0;
      LOWORD(v19) = 0;
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v15)
  {
    goto LABEL_37;
  }

  v15 = *(v11 + 8);
  v16 = *v11 >> 16;
  v17 = HIWORD(v15);
  v18 = HIDWORD(v15);
  v19 = HIWORD(*v11);
LABEL_14:
  v20 = a1 + v6[24];
  if (*(v20 + 8) == 1)
  {
    v20 = a1 + v6[23];
    if (*(v20 + 8))
    {
      LOBYTE(v21) = 0;
      goto LABEL_19;
    }
  }

  v21 = *v20;
  if (v21 < -128)
  {
    goto LABEL_38;
  }

  if (v21 > 127)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_19:
  if (v12)
  {
    v22 = *(v11 + 28);
  }

  else
  {
    v22 = 0;
  }

  v23 = (a1 + v6[9]);
  if ((v23[6] & 1) == 0)
  {
    v25 = v23[2];
    if ((v25 & 0xFFFFFF00) == 0)
    {
      v36 = (a1 + v6[22]);
      v35 = *v36;
      if (*(v36 + 4))
      {
        v35 = 0;
      }

      v37 = v23[3];
      if (v23[4])
      {
        LODWORD(v26) = dword_100487564[v37 >> 32];
        if ((v37 & 1) == 0)
        {
LABEL_31:
          v24 = HIDWORD(v25);
LABEL_34:
          v27 = *v23;
          v28 = v27 >> 8;
          v29 = v27 >> 16;
          v30 = v27 >> 24;
          v31 = HIDWORD(v27);
          v32 = v27 >> 40;
          goto LABEL_35;
        }
      }

      else
      {
        v26 = HIDWORD(v37);
        if ((v37 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v24) = dword_100487564[v25 >> 32];
      goto LABEL_34;
    }

LABEL_40:
    __break(1u);
  }

  LODWORD(v24) = 0;
  LOBYTE(v25) = 0;
  LODWORD(v26) = 0;
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  LOBYTE(v29) = 0;
  LOBYTE(v30) = 0;
  LOBYTE(v31) = 0;
  LOBYTE(v32) = 0;
  v33 = (a1 + v6[22]);
  v34 = *(v33 + 4);
  v35 = *v33;
  if (v34)
  {
    v35 = 0;
  }

LABEL_35:
  v38 = (a1 + v6[5]);
  v39 = *(v38 + 2);
  v45[0] = v8;
  v45[1] = v16;
  v45[2] = v14;
  v45[3] = v15;
  v45[4] = v17;
  v45[5] = v18;
  v45[6] = v19;
  v46 = v21;
  v47 = 0;
  v48 = v22;
  v49 = 0;
  v50 = v25;
  v51 = v35;
  v52 = v26;
  v53 = v24;
  v54 = v27;
  v55 = v28;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v60 = *v38;
  v61 = v39;
  v40 = v1[5];
  v41 = v1[2];
  v42 = v1[3];

  AppleDevice.setRequest(requestType:data:on:)(0xE5uLL, v45, &v62, 0, v41, v42);
}

uint64_t IO80211Driver<>.elect(peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(sub_10005DC58(&qword_10058D450, &unk_100486D78) - 8) + 64);
  __chkstk_darwin();
  v10 = v52 - v9 + 4;
  v11 = type metadata accessor for AWDLPeer(0);
  sub_100012400(a1 + v11[14], v10, &qword_10058D450, &unk_100486D78);
  v12 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    result = sub_100016290(v10, &qword_10058D450, &unk_100486D78);
    LOWORD(v14) = 0;
  }

  else
  {
    v15 = &v10[*(v12 + 140)];
    v14 = *v15;
    v16 = v15[4];
    result = sub_10003B8D4(v10, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v16)
    {
      LOWORD(v14) = 0;
    }

    else if (HIWORD(v14))
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v17 = a1 + v11[12];
  v18 = *(v17 + 40);
  v19 = (a1 + v11[21]);
  if (*(v19 + 4))
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  LODWORD(v21) = HIWORD(v20);
  if (!v18)
  {
    if (!v21)
    {
      LOWORD(v24) = 0;
      LOWORD(v22) = 0;
      LOWORD(v23) = 0;
      LOWORD(v25) = 0;
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v21)
  {
    goto LABEL_37;
  }

  v21 = *(v17 + 8);
  v22 = *v17 >> 16;
  v23 = HIWORD(v21);
  v24 = HIDWORD(v21);
  v25 = HIWORD(*v17);
LABEL_14:
  v26 = a1 + v11[24];
  if (*(v26 + 8) == 1)
  {
    v26 = a1 + v11[23];
    if (*(v26 + 8))
    {
      LOBYTE(v27) = 0;
      goto LABEL_19;
    }
  }

  v27 = *v26;
  if (v27 < -128)
  {
    goto LABEL_38;
  }

  if (v27 > 127)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_19:
  if (v18)
  {
    v28 = *(v17 + 28);
  }

  else
  {
    v28 = 0;
  }

  v29 = (a1 + v11[9]);
  if (v29[6])
  {
    LODWORD(v30) = 0;
    LOBYTE(v31) = 0;
    LODWORD(v32) = 0;
    LOBYTE(v33) = 0;
    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    LOBYTE(v36) = 0;
    LOBYTE(v37) = 0;
    LOBYTE(v38) = 0;
    v39 = (a1 + v11[22]);
    v40 = *(v39 + 4);
    v41 = *v39;
    if (v40)
    {
      v41 = 0;
    }

    goto LABEL_35;
  }

  v31 = v29[2];
  if ((v31 & 0xFFFFFF00) == 0)
  {
    v42 = (a1 + v11[22]);
    v41 = *v42;
    if (*(v42 + 4))
    {
      v41 = 0;
    }

    v43 = v29[3];
    if (v29[4])
    {
      LODWORD(v32) = dword_100487564[v43 >> 32];
      if ((v43 & 1) == 0)
      {
LABEL_31:
        v30 = HIDWORD(v31);
LABEL_34:
        v33 = *v29;
        v34 = v33 >> 8;
        v35 = v33 >> 16;
        v36 = v33 >> 24;
        v37 = HIDWORD(v33);
        v38 = v33 >> 40;
LABEL_35:
        v44 = (a1 + v11[5]);
        v45 = *(v44 + 2);
        v52[0] = v14;
        v52[1] = v22;
        v52[2] = v20;
        v52[3] = v21;
        v52[4] = v23;
        v52[5] = v24;
        v52[6] = v25;
        v53 = v27;
        v54 = 0;
        v55 = v28;
        v56 = 0;
        v57 = v31;
        v58 = v41;
        v59 = v32;
        v60 = v30;
        v61 = v33;
        v62 = v34;
        v63 = v35;
        v64 = v36;
        v65 = v37;
        v66 = v38;
        v67 = *v44;
        v68 = v45;
        type metadata accessor for awdl_peer_advert_add(0);
        v47 = v46;
        v48 = *(a4 + 8);
        v49 = *(a3 + 8);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        return sub_100110D80(229, v52, a2, v47, v48, v49, AssociatedConformanceWitness);
      }
    }

    else
    {
      v32 = HIDWORD(v43);
      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    LODWORD(v30) = dword_100487564[v31 >> 32];
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_1000F21B4()
{
  __chkstk_darwin();
  v2 = v1;
  v3 = *v0;
  sub_10010FCE0(0xDFuLL, 0, 0, __src);
  memcpy(v5, __src, 0xE88uLL);
  sub_100119F84(v5);
  memcpy(v7, v5, sizeof(v7));
  return memcpy(v2, v7, 0xE89uLL);
}

void *IO80211Driver<>.statistics.getter()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  type metadata accessor for apple80211_awdl_statistics(0);
  v9 = v8;
  v10 = *(v2 + 8);
  v11 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(223, v9, 0, 0, v5, v9, v10, v11, AssociatedConformanceWitness);
  memcpy(__dst, __src, 0xE88uLL);
  sub_100119F84(__dst);
  memcpy(v16, __dst, sizeof(v16));
  return memcpy(v7, v16, 0xE89uLL);
}

void *sub_1000F23BC()
{
  __chkstk_darwin();
  v2 = v1;
  v3 = *v0;
  sub_10010FDD4(0x157uLL, 0, 0, __src);
  memcpy(v5, __src, 0xFB8uLL);
  NANBitmap.Channel.operatingClass.getter(v5);
  memcpy(v7, v5, sizeof(v7));
  return memcpy(v2, v7, 0xFB8uLL);
}

void *IO80211Driver<>.lowLatencyStatistics.getter()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  type metadata accessor for apple80211_awdl_low_latency_statistics(0);
  v9 = v8;
  v10 = *(v2 + 8);
  v11 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(343, v9, 0, 0, v5, v9, v10, v11, AssociatedConformanceWitness);
  memcpy(__dst, __src, 0xFB8uLL);
  NANBitmap.Channel.operatingClass.getter(__dst);
  memcpy(v16, __dst, sizeof(v16));
  return memcpy(v7, v16, 0xFB8uLL);
}

uint64_t sub_1000F25E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for NANDriverCapabilities();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin();
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v122 - v10;
  v12 = swift_slowAlloc();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 28) = 0u;
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[5];

  AppleDevice.getRequest(requestType:data:on:)(0x143uLL, v12, (v12 + 44), 0, v13, v14);
  if (v3)
  {
  }

  else
  {
    v138 = v9;
    v146 = v4;
    *&v148 = v6;
    v145 = a1;
    v147 = v11;

    v17 = *v12;
    *&v149 = v12[1];
    LODWORD(v141) = v12[2];
    v139 = *(v12 + 2);
    LODWORD(v140) = v12[6];
    *&v142 = v12[7];
    *&v143 = v12[8];
    v144 = v12[9];
    v18 = v12[10];
    v19 = v12[11];
    v20 = v12[12];
    v21 = v12[13];
    v22 = v12[3];

    v23 = NANBitmap.Band.bands.getter(v22);
    sub_10005DC58(&qword_10058B3C8, &qword_10047F4E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100483520;
    v25 = sub_100286B80(v17, 0, 4uLL);
    LODWORD(v134) = v21;
    v135 = v18;
    v136 = v19;
    v137 = v20;
    *(inited + 32) = v25;
    v26 = sub_100286B80(v149, 4, 4uLL);
    *&v149 = v15;
    *(inited + 33) = v26;
    v27 = v26;

    if ((v27 & ~v25) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28 | v25;
    v30 = v148;
    v31 = *(v148 + 32);
    v32 = v147;
    *&v147[v31] = v139;
    v33 = enum case for DispatchTimeInterval.milliseconds(_:);
    v34 = type metadata accessor for DispatchTimeInterval();
    (*(*(v34 - 8) + 104))(v32 + v31, v33, v34);
    v35 = v140 != 0;
    v36 = v134 == 0;
    v37 = v32 + v30[17];
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 1;
    v38 = v32 + v30[18];
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *(v38 + 20) = 1;
    v39 = v32 + v30[19];
    *(v39 + 32) = 0;
    *v39 = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 40) = 1;
    *v32 = v23;
    *(v32 + 8) = &off_100556270;
    *(v32 + 16) = v141;
    *(v32 + 17) = v29;
    *(v32 + v30[9]) = v142;
    *(v32 + v30[10]) = v143;
    *(v32 + v30[11]) = v144;
    *(v32 + v30[12]) = v135;
    *(v32 + v30[13]) = v136;
    *(v32 + v30[14]) = v137;
    *(v32 + v30[15]) = v35;
    v40 = !v36;
    *(v32 + v30[16]) = v40;
    v144 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *&v150 = swift_slowAlloc();
      v44 = v150;
      *v43 = 136315138;
      swift_beginAccess();
      sub_100119FA0(v32, v138, type metadata accessor for NANDriverCapabilities);
      v45 = String.init<A>(describing:)();
      v47 = sub_100002320(v45, v46, &v150);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "NAN Capabilities: [%s]", v43, 0xCu);
      sub_100002A00(v44);
    }

    v48 = v145;
    v49 = swift_slowAlloc();
    *v49 = 0u;
    v49[1] = 0u;

    AppleDevice.getRequest(requestType:data:on:)(0x9AuLL, v49, (v49 + 2), 0, 0x306C647761, 0xE500000000000000);

    v50 = v49[1];
    v143 = *v49;
    v142 = v50;

    swift_beginAccess();
    v51 = v148;
    v52 = v32 + *(v148 + 68);
    v53 = v142;
    *v52 = v143;
    *(v52 + 16) = v53;
    *(v52 + 32) = 0;
    v54 = v32 + v51[17];
    if ((*(v54 + 32) & 1) == 0)
    {
      v55 = *(v54 + 16);
      v56 = *v54;
      v57 = *(v54 + 8);
      v58 = *(v54 + 24);
      *&v143 = apple80211_ht_capability.maxMCS_maxNSS.getter(*v54, v57, v55, v58);
      v60 = v59;
      v61 = Logger.logObject.getter();
      LODWORD(v142) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v142))
      {
        v62 = HIWORD(v56);
        v138 = HIBYTE(v58);
        v137 = v58 >> 24;
        v136 = v58 >> 8;
        v135 = HIBYTE(v55);
        v134 = HIWORD(v55);
        v133 = v55 >> 40;
        v132 = HIDWORD(v55);
        v131 = v55 >> 24;
        v130 = v55 >> 16;
        v129 = v55 >> 8;
        v128 = HIBYTE(v57);
        v127 = HIWORD(v57);
        v126 = v57 >> 40;
        v125 = HIDWORD(v57);
        v124 = v57 >> 24;
        v123 = v57 >> 16;
        v122 = v57 >> 8;
        v140 = v60;
        v63 = swift_slowAlloc();
        v139 = v61;
        v64 = v63;
        v141 = swift_slowAlloc();
        v156 = v141;
        *v64 = 136316418;
        *&v150 = v56;
        BYTE8(v150) = v57;
        BYTE9(v150) = v122;
        BYTE10(v150) = v123;
        BYTE11(v150) = v124;
        BYTE12(v150) = v125;
        BYTE13(v150) = v126;
        BYTE14(v150) = v127;
        HIBYTE(v150) = v128;
        LOBYTE(v151) = v55;
        BYTE1(v151) = v129;
        BYTE2(v151) = v130;
        BYTE3(v151) = v131;
        BYTE4(v151) = v132;
        BYTE5(v151) = v133;
        BYTE6(v151) = v134;
        BYTE7(v151) = v135;
        BYTE8(v151) = v58;
        *(&v151 + 9) = v136;
        *(&v151 + 11) = v137;
        HIBYTE(v151) = v138;
        type metadata accessor for apple80211_ht_capability(0);
        v65 = String.init<A>(describing:)();
        v67 = sub_100002320(v65, v66, &v156);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        if ((v62 & 2) != 0)
        {
          v68 = 0x7A484D202D3034;
        }

        else
        {
          v68 = 0x7A484D203032;
        }

        if ((v62 & 2) != 0)
        {
          v69 = 0xE700000000000000;
        }

        else
        {
          v69 = 0xE600000000000000;
        }

        v70 = sub_100002320(v68, v69, &v156);

        *(v64 + 14) = v70;
        *(v64 + 22) = 1024;
        *(v64 + 24) = (v62 >> 5) & 1;
        *(v64 + 28) = 1024;
        *(v64 + 30) = (v62 >> 6) & 1;
        *(v64 + 34) = 2048;
        *(v64 + 36) = v143;
        *(v64 + 44) = 2048;
        *(v64 + 46) = v140;
        v71 = v139;
        _os_log_impl(&_mh_execute_header, v139, v142, "[HT] Cap: %s, Bandwidth: %s, SGI(20):%{BOOL}d, SGI(40):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v64, 0x36u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v48 = v145;
      v51 = v148;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;

    AppleDevice.getRequest(requestType:data:on:)(0xD6uLL, v72, v72 + 20, 0, 0x306C647761, 0xE500000000000000);

    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);

    v76 = &v147[v51[18]];
    *v76 = v73;
    *(v76 + 1) = v74;
    *(v76 + 4) = v75;
    v77 = v147;
    v76[20] = 0;
    v78 = v77 + v51[18];
    if ((*(v78 + 20) & 1) == 0)
    {
      v79 = *(v78 + 16);
      v81 = *v78;
      v80 = *(v78 + 8);
      v82 = HIDWORD(*v78);
      v83 = *v78 >> 40;
      *&v143 = HIWORD(*v78);
      v84 = v143 | (v80 << 16);
      v85 = v80 >> 16;
      LODWORD(v150) = v81;
      BYTE4(v150) = v82;
      v140 = v83;
      BYTE5(v150) = v83;
      *(&v150 + 6) = v84;
      WORD5(v150) = WORD1(v80);
      v138 = HIDWORD(v80);
      WORD6(v150) = WORD2(v80);
      v139 = HIWORD(v80);
      HIWORD(v150) = HIWORD(v80);
      v86 = v79;
      v141 = apple80211_vht_capability.maxMCS_maxNSS.getter(v150, *(&v150 + 1));
      *&v142 = v87;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v156 = v137;
        *v90 = 136316418;
        LODWORD(v150) = v81;
        BYTE4(v150) = v82;
        BYTE5(v150) = v140;
        *(&v150 + 6) = v84;
        WORD5(v150) = v85;
        WORD6(v150) = v138;
        HIWORD(v150) = v139;
        LOWORD(v151) = v86;
        type metadata accessor for apple80211_vht_capability(0);
        v91 = String.init<A>(describing:)();
        v93 = sub_100002320(v91, v92, &v156);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2080;
        v94 = v143;
        if ((v143 & 0xC) != 0)
        {
          v95 = 0x7A484D20303631;
        }

        else
        {
          v95 = 0x7A484D203038;
        }

        if ((v143 & 0xC) != 0)
        {
          v96 = 0xE700000000000000;
        }

        else
        {
          v96 = 0xE600000000000000;
        }

        v97 = sub_100002320(v95, v96, &v156);

        *(v90 + 14) = v97;
        *(v90 + 22) = 1024;
        *(v90 + 24) = (v94 >> 5) & 1;
        *(v90 + 28) = 1024;
        *(v90 + 30) = (v94 >> 6) & 1;
        *(v90 + 34) = 2048;
        *(v90 + 36) = v141;
        *(v90 + 44) = 2048;
        *(v90 + 46) = v142;
        _os_log_impl(&_mh_execute_header, v88, v89, "[VHT] Cap: %s, Bandwidth: %s, SGI(80):%{BOOL}d, SGI(160):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v90, 0x36u);
        swift_arrayDestroy();

        v48 = v145;
      }

      v77 = v147;
      v51 = v148;
    }

    v98 = swift_slowAlloc();
    *v98 = 0u;
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0;

    AppleDevice.getRequest(requestType:data:on:)(0x23AuLL, v98, v98 + 40, 0, 0x306C647761, 0xE500000000000000);

    v99 = *(v98 + 32);
    v100 = *(v98 + 16);
    v149 = *v98;
    v148 = v100;

    v101 = v77 + v51[19];
    v102 = v148;
    *v101 = v149;
    *(v101 + 16) = v102;
    *(v101 + 32) = v99;
    *(v101 + 40) = 0;
    v103 = v77 + v51[19];
    if ((*(v103 + 40) & 1) == 0)
    {
      v105 = *(v103 + 24);
      v104 = *(v103 + 32);
      v107 = *(v103 + 8);
      v106 = *(v103 + 16);
      *&v153 = *v103;
      *(&v153 + 1) = v107;
      *&v154 = v106;
      BYTE8(v154) = v105;
      WORD5(v154) = WORD1(v105);
      WORD6(v154) = WORD2(v105);
      HIWORD(v154) = HIWORD(v105);
      LODWORD(v155) = v104;
      WORD2(v155) = WORD2(v104);
      v108 = apple80211_he_capability.maxMCS_maxNSS.getter();
      v110 = v109;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v113 = 136316162;
        v150 = v153;
        v151 = v154;
        v152 = v155;
        type metadata accessor for apple80211_he_capability(0);
        v114 = String.init<A>(describing:)();
        v116 = sub_100002320(v114, v115, &v156);
        *&v149 = v110;
        v117 = v116;

        *(v113 + 4) = v117;
        *(v113 + 12) = 2080;
        v118 = 0x7A484D203032;
        if ((v107 & 0x2000000000000) != 0)
        {
          v118 = 0x7A484D203038;
        }

        v77 = v147;
        if ((v107 & 0x4000000000000) != 0)
        {
          v119 = 0x7A484D20303631;
        }

        else
        {
          v119 = v118;
        }

        if ((v107 & 0x4000000000000) != 0)
        {
          v120 = 0xE700000000000000;
        }

        else
        {
          v120 = 0xE600000000000000;
        }

        v121 = sub_100002320(v119, v120, &v156);

        *(v113 + 14) = v121;
        *(v113 + 22) = 1024;
        *(v113 + 24) = 0;
        *(v113 + 28) = 2048;
        *(v113 + 30) = v108;
        *(v113 + 38) = 2048;
        *(v113 + 40) = v149;
        _os_log_impl(&_mh_execute_header, v111, v112, "[HE] Cap: %s, Bandwidth: %s, SGI:%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v113, 0x30u);
        swift_arrayDestroy();
        v48 = v145;
      }
    }

    sub_100119FA0(v77, v48, type metadata accessor for NANDriverCapabilities);
    return sub_10003B8D4(v77, type metadata accessor for NANDriverCapabilities);
  }
}

uint64_t IO80211Driver<>.initializeNAN()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v180 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v184 = v7;
  v185 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v179 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v181 = &v146 - v11;
  __chkstk_darwin();
  v182 = &v146 - v12;
  __chkstk_darwin();
  *&v183 = &v146 - v13;
  v186 = type metadata accessor for NANDriverCapabilities();
  v14 = *(*(v186 - 1) + 64);
  __chkstk_darwin();
  v16 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v146 - v17;
  type metadata accessor for apple80211_nan_device_capability(0);
  v20 = v19;
  v21 = *(a2 + 8);
  v22 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v187;
  result = sub_100110570(323, v20, 0, 0, a1, v20, v21, v22, AssociatedConformanceWitness);
  if (!v24)
  {
    v167 = v16;
    v172 = AssociatedConformanceWitness;
    v173 = v22;
    v174 = v21;
    v175 = a1;
    v171 = v18;
    v26 = v195;
    v178 = BYTE1(v195);
    v168 = BYTE2(v195);
    v176 = WORD2(v195);
    LODWORD(v177) = BYTE6(v195);
    v27 = BYTE7(v195);
    v28 = BYTE8(v195);
    v29 = BYTE9(v195);
    v30 = BYTE10(v195);
    v169 = BYTE11(v195);
    *&v170 = BYTE12(v195);
    v31 = BYTE13(v195);
    v187 = NANBitmap.Band.bands.getter(BYTE3(v195));
    sub_10005DC58(&qword_10058B3C8, &qword_10047F4E0);
    inited = swift_initStackObject();
    *(inited + 24) = 4;
    v33 = sub_100286B80(v26, 0, 4uLL);
    v34 = v176;
    LODWORD(v164) = v31;
    v35 = v177;
    v165 = v28;
    v166 = v29;
    *(inited + 32) = v33;
    v36 = sub_100286B80(v178, 4, 4uLL);
    v178 = 0;
    if ((v36 & ~v33) != 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    LODWORD(v163) = v37 | v33;
    swift_setDeallocating();
    v38 = v186;
    v39 = v186[8];
    v40 = v171;
    *&v171[v39] = v34;
    v41 = enum case for DispatchTimeInterval.milliseconds(_:);
    v42 = type metadata accessor for DispatchTimeInterval();
    (*(*(v42 - 8) + 104))(v40 + v39, v41, v42);
    v43 = v164 != 0;
    v44 = v40 + v38[17];
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 1;
    v45 = v40 + v38[18];
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *(v45 + 20) = 1;
    v46 = v40 + v38[19];
    *(v46 + 32) = 0;
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 40) = 1;
    *v40 = v187;
    *(v40 + 8) = &off_100556298;
    *(v40 + 16) = v168;
    *(v40 + 17) = v163;
    *(v40 + v38[9]) = v27;
    *(v40 + v38[10]) = v165;
    *(v40 + v38[11]) = v166;
    *(v40 + v38[12]) = v30;
    *(v40 + v38[13]) = v169;
    *(v40 + v38[14]) = v170;
    *(v40 + v38[15]) = v35 != 0;
    *(v40 + v38[16]) = v43;
    v47 = v174;
    v48 = *(v174 + 8);
    v49 = *(v48 + 8);
    v50 = v183;
    v187 = v48;
    v176 = v49;
    v177 = v48 + 8;
    v49(v175);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v170 = swift_slowAlloc();
      *&v195 = v170;
      *v53 = 136315138;
      swift_beginAccess();
      sub_100119FA0(v40, v167, type metadata accessor for NANDriverCapabilities);
      v54 = String.init<A>(describing:)();
      v56 = sub_100002320(v54, v55, &v195);

      *(v53 + 4) = v56;
      v47 = v174;
      _os_log_impl(&_mh_execute_header, v51, v52, "NAN Capabilities: [%s]", v53, 0xCu);
      sub_100002A00(v170);
    }

    v57 = *(v185 + 8);
    v58 = v50;
    v59 = v184;
    v57(v58, v184);
    type metadata accessor for apple80211_ht_capability(0);
    v60 = v175;
    v61 = v178;
    sub_100110570(154, v62, 0x306C647761, 0xE500000000000000, v175, v62, v47, v173, v172);
    v178 = v61;
    if (v61)
    {
      v63 = v40;
    }

    else
    {
      v183 = v193;
      v170 = v194;
      swift_beginAccess();
      v64 = v186;
      v65 = v40 + v186[17];
      v66 = v170;
      *v65 = v183;
      *(v65 + 16) = v66;
      *(v65 + 32) = 0;
      v67 = v40 + v64[17];
      if ((*(v67 + 32) & 1) == 0)
      {
        v69 = *(v67 + 16);
        v68 = *(v67 + 24);
        v70 = *(v67 + 8);
        v166 = *v67;
        v167 = v68;
        v169 = apple80211_ht_capability.maxMCS_maxNSS.getter(v166, v70, v69, v68);
        *&v170 = v71;
        v72 = v60;
        v73 = v182;
        v176(v72, v187);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();
        *&v183 = v74;
        v168 = v75;
        if (os_log_type_enabled(v74, v75))
        {
          v77 = v166;
          v76 = v167;
          v78 = HIWORD(v166);
          v163 = v167 >> 24;
          v164 = HIBYTE(v167);
          v161 = HIBYTE(v69);
          v162 = v167 >> 8;
          v159 = v69 >> 40;
          v160 = HIWORD(v69);
          v157 = v69 >> 24;
          v158 = HIDWORD(v69);
          v155 = v69 >> 8;
          v156 = v69 >> 16;
          v153 = HIWORD(v70);
          v154 = HIBYTE(v70);
          v151 = HIDWORD(v70);
          v152 = v70 >> 40;
          v149 = v70 >> 16;
          v150 = v70 >> 24;
          v147 = v166 >> 40;
          v148 = v70 >> 8;
          v79 = HIDWORD(v166);
          v80 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          *&v188[0] = v165;
          *v80 = 136316418;
          LODWORD(v195) = v77;
          BYTE4(v195) = v79;
          v59 = v184;
          BYTE5(v195) = v147;
          WORD3(v195) = v78;
          BYTE8(v195) = v70;
          BYTE9(v195) = v148;
          BYTE10(v195) = v149;
          BYTE11(v195) = v150;
          BYTE12(v195) = v151;
          BYTE13(v195) = v152;
          BYTE14(v195) = v153;
          HIBYTE(v195) = v154;
          LOBYTE(v196) = v69;
          BYTE1(v196) = v155;
          BYTE2(v196) = v156;
          BYTE3(v196) = v157;
          BYTE4(v196) = v158;
          BYTE5(v196) = v159;
          BYTE6(v196) = v160;
          BYTE7(v196) = v161;
          BYTE8(v196) = v76;
          *(&v196 + 9) = v162;
          *(&v196 + 11) = v163;
          HIBYTE(v196) = v164;
          v81 = String.init<A>(describing:)();
          v83 = sub_100002320(v81, v82, v188);

          *(v80 + 4) = v83;
          *(v80 + 12) = 2080;
          if ((v78 & 2) != 0)
          {
            v84 = 0x7A484D202D3034;
          }

          else
          {
            v84 = 0x7A484D203032;
          }

          if ((v78 & 2) != 0)
          {
            v85 = 0xE700000000000000;
          }

          else
          {
            v85 = 0xE600000000000000;
          }

          v86 = sub_100002320(v84, v85, v188);

          *(v80 + 14) = v86;
          *(v80 + 22) = 1024;
          *(v80 + 24) = (v78 >> 5) & 1;
          *(v80 + 28) = 1024;
          *(v80 + 30) = (v78 >> 6) & 1;
          *(v80 + 34) = 2048;
          *(v80 + 36) = v169;
          *(v80 + 44) = 2048;
          *(v80 + 46) = v170;
          v87 = v183;
          _os_log_impl(&_mh_execute_header, v183, v168, "[HT] Cap: %s, Bandwidth: %s, SGI(20):%{BOOL}d, SGI(40):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v80, 0x36u);
          swift_arrayDestroy();

          v57 = *(v185 + 8);
          v57(v182, v59);
        }

        else
        {

          v57(v73, v59);
        }

        v40 = v171;
        v47 = v174;
        v60 = v175;
      }

      type metadata accessor for apple80211_vht_capability(0);
      v88 = v172;
      v89 = v178;
      sub_100110570(214, v90, 0x306C647761, 0xE500000000000000, v60, v90, v47, v173, v172);
      if (v89)
      {
        v63 = v40;
      }

      else
      {
        v178 = 0;
        v91 = v192;
        v92 = v186;
        v93 = v40 + v186[18];
        *v93 = v191;
        *(v93 + 16) = v91;
        *(v93 + 20) = 0;
        v94 = v40 + v92[18];
        if ((*(v94 + 20) & 1) == 0)
        {
          v95 = *(v94 + 16);
          v97 = *v94;
          v96 = *(v94 + 8);
          v98 = v60;
          v99 = HIDWORD(*v94);
          v100 = *v94 >> 40;
          *&v183 = HIWORD(*v94);
          v101 = v183 | (v96 << 16);
          v102 = v96 >> 16;
          LODWORD(v195) = v97;
          BYTE4(v195) = v99;
          v166 = HIWORD(v96);
          v167 = v100;
          BYTE5(v195) = v100;
          *(&v195 + 6) = v101;
          WORD5(v195) = WORD1(v96);
          v165 = HIDWORD(v96);
          WORD6(v195) = WORD2(v96);
          HIWORD(v195) = HIWORD(v96);
          v168 = v95;
          *&v170 = apple80211_vht_capability.maxMCS_maxNSS.getter(v195, *(&v195 + 1));
          v182 = v103;
          v104 = v98;
          v105 = v181;
          v176(v104, v187);
          v106 = Logger.logObject.getter();
          LODWORD(v169) = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v106, v169))
          {
            v107 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *&v188[0] = v164;
            *v107 = 136316418;
            LODWORD(v195) = v97;
            BYTE4(v195) = v99;
            BYTE5(v195) = v167;
            *(&v195 + 6) = v101;
            WORD5(v195) = v102;
            WORD6(v195) = v165;
            HIWORD(v195) = v166;
            LOWORD(v196) = v168;
            v108 = String.init<A>(describing:)();
            v110 = sub_100002320(v108, v109, v188);

            *(v107 + 4) = v110;
            *(v107 + 12) = 2080;
            v111 = v183;
            if ((v183 & 0xC) != 0)
            {
              v112 = 0x7A484D20303631;
            }

            else
            {
              v112 = 0x7A484D203038;
            }

            if ((v183 & 0xC) != 0)
            {
              v113 = 0xE700000000000000;
            }

            else
            {
              v113 = 0xE600000000000000;
            }

            v114 = sub_100002320(v112, v113, v188);

            *(v107 + 14) = v114;
            *(v107 + 22) = 1024;
            *(v107 + 24) = (v111 >> 5) & 1;
            *(v107 + 28) = 1024;
            *(v107 + 30) = (v111 >> 6) & 1;
            *(v107 + 34) = 2048;
            *(v107 + 36) = v170;
            *(v107 + 44) = 2048;
            *(v107 + 46) = v182;
            _os_log_impl(&_mh_execute_header, v106, v169, "[VHT] Cap: %s, Bandwidth: %s, SGI(80):%{BOOL}d, SGI(160):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v107, 0x36u);
            swift_arrayDestroy();

            v115 = v181;
          }

          else
          {

            v115 = v105;
          }

          v59 = v184;
          v57(v115, v184);
          v47 = v174;
          v60 = v175;
          v88 = v172;
        }

        type metadata accessor for apple80211_he_capability(0);
        v116 = v178;
        sub_100110570(570, v117, 0x306C647761, 0xE500000000000000, v60, v117, v47, v173, v88);
        if (v116)
        {
          v63 = v171;
        }

        else
        {
          v178 = 0;
          v118 = v197;
          v119 = v186;
          v120 = v171;
          v121 = &v171[v186[19]];
          v122 = v196;
          *v121 = v195;
          *(v121 + 1) = v122;
          *(v121 + 4) = v118;
          v121[40] = 0;
          v123 = v120 + v119[19];
          v124 = v180;
          if ((*(v123 + 40) & 1) == 0)
          {
            v126 = *(v123 + 24);
            v125 = *(v123 + 32);
            v127 = v60;
            v129 = *(v123 + 8);
            v128 = *(v123 + 16);
            *&v198 = *v123;
            *(&v198 + 1) = v129;
            *&v199 = v128;
            BYTE8(v199) = v126;
            WORD5(v199) = WORD1(v126);
            WORD6(v199) = WORD2(v126);
            HIWORD(v199) = HIWORD(v126);
            LODWORD(v200) = v125;
            WORD2(v200) = WORD2(v125);
            v186 = apple80211_he_capability.maxMCS_maxNSS.getter();
            v201 = v130;
            v131 = v179;
            v176(v127, v187);
            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = BYTE6(v129);
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              *v135 = 136316162;
              v188[0] = v198;
              v188[1] = v199;
              v189 = v200;
              v190 = v136;
              v137 = String.init<A>(describing:)();
              v139 = sub_100002320(v137, v138, &v190);

              *(v135 + 4) = v139;
              *(v135 + 12) = 2080;
              v140 = 0x7A484D203032;
              if ((v134 & 2) != 0)
              {
                v140 = 0x7A484D203038;
              }

              v141 = (v134 & 4) == 0;
              v124 = v180;
              if (v141)
              {
                v142 = v140;
              }

              else
              {
                v142 = 0x7A484D20303631;
              }

              if (v141)
              {
                v143 = 0xE600000000000000;
              }

              else
              {
                v143 = 0xE700000000000000;
              }

              v144 = sub_100002320(v142, v143, &v190);

              *(v135 + 14) = v144;
              *(v135 + 22) = 1024;
              *(v135 + 24) = 0;
              *(v135 + 28) = 2048;
              *(v135 + 30) = v186;
              *(v135 + 38) = 2048;
              *(v135 + 40) = v201;
              _os_log_impl(&_mh_execute_header, v132, v133, "[HE] Cap: %s, Bandwidth: %s, SGI:%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v135, 0x30u);
              swift_arrayDestroy();

              (*(v185 + 8))(v179, v59);
            }

            else
            {

              (*(v185 + 8))(v131, v59);
            }
          }

          v145 = v171;
          sub_100119FA0(v171, v124, type metadata accessor for NANDriverCapabilities);
          v63 = v145;
        }
      }
    }

    return sub_10003B8D4(v63, type metadata accessor for NANDriverCapabilities);
  }

  return result;
}

BOOL IO80211Driver<>.nanState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_enable(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(268, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t sub_1000F4868(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000011, 0x80000001004B9170, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_ENABLED", v12, 0xCu);
    sub_100002A00(v13);

    LOBYTE(a1) = v19;
  }

  (*(v5 + 8))(v8, v4);
  LOBYTE(v20) = a1 & 1;
  HIDWORD(v20) = 64;
  v14 = v2[5];
  v15 = v2[2];
  v16 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(0x10CuLL, &v20, &v21, 0, v15, v16);
}

uint64_t IO80211Driver<>.update(nanState:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v26 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[1] = v5;
    v18 = v17;
    v28 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000011, 0x80000001004B9170, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_ENABLED", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  LOBYTE(v28) = v26 & 1;
  HIDWORD(v28) = 64;
  type metadata accessor for apple80211_nan_enable(0);
  v20 = v19;
  v21 = *(v27 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(268, &v28, a2, v20, v21, v22, AssociatedConformanceWitness);
}

unint64_t sub_1000F4D6C()
{
  v1 = *v0;
  sub_10010FFC0(0x10EuLL, 0, 0, v3);
  return v4 | (v5 << 32) | (v6 << 40);
}

unint64_t IO80211Driver<>.clusterID.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_cluster_id(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(270, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 | (v13 << 32) | (v14 << 40);
}

uint64_t sub_1000F4F14(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD000000000000012, 0x80000001004B9190, &v20);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_CLUSTER_ID", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  LOWORD(v20) = a1;
  BYTE2(v20) = BYTE2(a1);
  BYTE3(v20) = BYTE3(a1);
  BYTE4(v20) = BYTE4(a1);
  BYTE5(v20) = BYTE5(a1);
  HIWORD(v20) = a1;
  v21 = BYTE2(a1);
  v22 = BYTE3(a1);
  v23 = BYTE4(a1);
  v24 = BYTE5(a1);
  v15 = v3[5];
  v16 = v3[2];
  v17 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x10EuLL, &v20, &v25, 0, v16, v17);
}

uint64_t IO80211Driver<>.update(clusterID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v4;
    v18 = v17;
    v29 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000012, 0x80000001004B9190, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_CLUSTER_ID", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v26;
  }

  (*(v9 + 8))(v12, v8);
  LOWORD(v29) = a1;
  BYTE2(v29) = BYTE2(a1);
  BYTE3(v29) = BYTE3(a1);
  BYTE4(v29) = BYTE4(a1);
  BYTE5(v29) = BYTE5(a1);
  HIWORD(v29) = a1;
  v30 = BYTE2(a1);
  v31 = BYTE3(a1);
  v32 = BYTE4(a1);
  v33 = BYTE5(a1);
  type metadata accessor for apple80211_nan_cluster_id(0);
  v20 = v19;
  v21 = *(v28 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(270, &v29, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_1000F5464()
{
  v1 = *v0;
  v2 = sub_1001100B4(0x119uLL, 0, 0) >> 8;
  return sub_1001100B4(0x11AuLL, 0, 0) & 0xFF00 | v2;
}

uint64_t IO80211Driver<>.electionMetric.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_master_pref(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(281, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  type metadata accessor for apple80211_nan_random_factor(0);
  sub_100110570(282, v11, 0, 0, a1, v11, v8, v9, AssociatedConformanceWitness);
  return v14 | (v13 << 8);
}

uint64_t sub_1000F5640(int a1)
{
  v3 = v2;
  v4 = v1;
  v31 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v29 - v10;
  v29[0] = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v29[1] = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v30 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v32);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_PREFERENCE", v16, 0xCu);
    sub_100002A00(v17);
    v3 = v2;

    v5 = v30;
  }

  v18 = *(v6 + 8);
  v18(v11, v5);
  LOBYTE(v32) = v31;
  BYTE1(v32) = v31;
  v19 = v4[5];
  v20 = v4[2];
  v21 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(0x119uLL, &v32, &v32 + 2, 0, v20, v21);

  if (!v3)
  {
    v30 = v5;
    Logger.init(subsystem:category:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v29[0] = v9;
      v26 = v25;
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v32);
      _os_log_impl(&_mh_execute_header, v23, v24, "nan_send: %s  APPLE80211_IOC_NAN_RANDOM_FACTOR", v26, 0xCu);
      sub_100002A00(v27);

      v28 = v29[0];
    }

    else
    {

      v28 = v9;
    }

    v18(v28, v30);
    LOBYTE(v32) = BYTE1(v31);
    BYTE1(v32) = BYTE1(v31);

    AppleDevice.setRequest(requestType:data:on:)(0x11AuLL, &v32, &v32 + 2, 0, v20, v21);
  }

  return result;
}

uint64_t IO80211Driver<>.update(electionMetric:)(__int16 a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v48 = a3;
  v5 = v4;
  v47 = a4;
  LOWORD(v7) = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  v43 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v44 = v12;
  v45 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v46 = v5;
    v19 = v18;
    v20 = a2;
    v21 = v8;
    v22 = v7;
    v7 = swift_slowAlloc();
    v50 = v7;
    *v19 = 136315138;
    *(v19 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v50);
    _os_log_impl(&_mh_execute_header, v15, v16, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_PREFERENCE", v19, 0xCu);
    sub_100002A00(v7);
    LOWORD(v7) = v22;
    v8 = v21;
    a2 = v20;

    v5 = v46;
  }

  v23 = *(v9 + 8);
  v23(v14, v8);
  LOBYTE(v50) = v7;
  BYTE1(v50) = v7;
  type metadata accessor for apple80211_nan_master_pref(0);
  v25 = v24;
  v26 = *(v48 + 1);
  v27 = *(v47 + 16);
  swift_getAssociatedTypeWitness();
  v28 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v49;
  result = sub_100110D80(281, &v50, a2, v25, v26, v28, AssociatedConformanceWitness);
  if (!v30)
  {
    v47 = v28;
    v48 = v23;
    v49 = 0;
    v32 = v44;
    Logger.init(subsystem:category:)();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = v5;
      v36 = v35;
      v37 = swift_slowAlloc();
      v43 = v8;
      v38 = BYTE1(v7);
      v7 = v37;
      v50 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v50);
      _os_log_impl(&_mh_execute_header, v33, v34, "nan_send: %s  APPLE80211_IOC_NAN_RANDOM_FACTOR", v36, 0xCu);
      sub_100002A00(v7);
      BYTE1(v7) = v38;

      v39 = v32;
      v40 = v43;
    }

    else
    {

      v39 = v32;
      v40 = v8;
    }

    v48(v39, v40);
    LOBYTE(v50) = BYTE1(v7);
    BYTE1(v50) = BYTE1(v7);
    type metadata accessor for apple80211_nan_random_factor(0);
    return sub_100110D80(282, &v50, a2, v41, v26, v47, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1000F5EE0()
{
  v1 = swift_slowAlloc();
  *v1 = 0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];

  AppleDevice.getRequest(requestType:data:on:)(0x111uLL, v1, (v1 + 2), 0, v2, v3);

  v5 = *v1;
  v6 = v1[1];

  v7 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v5);
  if (v7 == 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v6);
  if (v9 == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v8 | (v10 << 8);
}

uint64_t IO80211Driver<>.dwAwakePeriods.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_dw_awake_period(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(273, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  v11 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v16);
  if (v11 == 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v17);
  if (v13 == 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v12 | (v14 << 8);
}

uint64_t sub_1000F6114(unsigned int a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91D0, &v20);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_DW_AWAKE_PERIOD", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  LOBYTE(v20) = 0x1008040100uLL >> (8 * a1);
  BYTE1(v20) = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v15 = v3[5];
  v16 = v3[2];
  v17 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x111uLL, &v20, &v20 + 2, 0, v16, v17);
}

uint64_t IO80211Driver<>.update(dwAwakePeriods:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v4;
    v18 = v17;
    v29 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91D0, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_DW_AWAKE_PERIOD", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v26;
  }

  (*(v9 + 8))(v12, v8);
  v30[0] = 0x1008040100uLL >> (8 * a1);
  v30[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  type metadata accessor for apple80211_nan_dw_awake_period(0);
  v20 = v19;
  v21 = *(v28 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(273, v30, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_1000F667C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91F0, &v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_CHANNEL", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  if (v15 > 0xFF)
  {
    __break(1u);
  }

  LOBYTE(v21) = v15;
  v16 = v3[5];
  v17 = v3[2];
  v18 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x11FuLL, &v21, &v21 + 1, 0, v17, v18);
}

uint64_t IO80211Driver<>.update(primaryChannel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v4;
    v18 = v17;
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91F0, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_CHANNEL", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v27;
  }

  result = (*(v9 + 8))(v12, v8);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v20 = 0;
  }

  else
  {
    v20 = a1;
  }

  if (v20 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v31 = v20;
    type metadata accessor for apple80211_nan_primary_master_channel(0);
    v22 = v21;
    v23 = *(v29 + 8);
    v24 = *(a4 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(287, &v31, a2, v22, v23, v24, AssociatedConformanceWitness);
  }

  return result;
}

unint64_t sub_1000F6B90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *v3;
  v5 = sub_1001101A8(a3, 0, 0);
  return sub_10003B238(v5) & 0xFFFFFFFFFFFFLL;
}

unint64_t sub_1000F6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = a4(0);
  v10 = *(a2 + 8);
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(a5, v9, 0, 0, a1, v9, v10, v11, AssociatedConformanceWitness);
  return sub_10003B238(v14) & 0xFFFFFFFFFFFFLL;
}

uint64_t sub_1000F6D28(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD000000000000019, 0x80000001004B9210, &v21);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_SECONDARY_MASTER_CHANNEL", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  if (v15 > 0xFF)
  {
    __break(1u);
  }

  LOBYTE(v21) = v15;
  v16 = v3[5];
  v17 = v3[2];
  v18 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x120uLL, &v21, &v21 + 1, 0, v17, v18);
}

uint64_t IO80211Driver<>.update(secondaryChannel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v4;
    v18 = v17;
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000019, 0x80000001004B9210, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_SECONDARY_MASTER_CHANNEL", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v27;
  }

  result = (*(v9 + 8))(v12, v8);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v20 = 0;
  }

  else
  {
    v20 = a1;
  }

  if (v20 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v31 = v20;
    type metadata accessor for apple80211_nan_secondary_master_channel(0);
    v22 = v21;
    v23 = *(v29 + 8);
    v24 = *(a4 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(288, &v31, a2, v22, v23, v24, AssociatedConformanceWitness);
  }

  return result;
}

BOOL IO80211Driver<>.hostElection.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_host_election(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(275, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t sub_1000F7398(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9230, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_HOST_ELECTION", v12, 0xCu);
    sub_100002A00(v13);

    LOBYTE(a1) = v19;
  }

  (*(v5 + 8))(v8, v4);
  LOBYTE(v20) = a1 & 1;
  v14 = v2[5];
  v15 = v2[2];
  v16 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(0x113uLL, &v20, &v20 + 1, 0, v15, v16);
}

uint64_t IO80211Driver<>.update(hostElection:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[1] = v5;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9230, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_HOST_ELECTION", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  v29 = v28 & 1;
  type metadata accessor for apple80211_nan_host_election(0);
  v20 = v19;
  v21 = *(v26 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(275, &v29, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_1000F78B0()
{
  v0 = type metadata accessor for Logger();
  v44 = *(v0 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin();
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v47[1], 0, 260);
  v47[0] = 23;
  v4 = sub_100033AA8(_swiftEmptyArrayStorage);
  v5 = type metadata accessor for BinaryEncoder();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100480A90;
  *(v6 + 32) = v4;
  v48[3] = v5;
  v48[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v48[0] = v6;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  v7 = v46;
  Array<A>.encode(to:)();
  if (v7)
  {

    return sub_100002A00(v48);
  }

  v9 = v45;
  v43 = v3;
  v46 = v0;
  sub_100002A00(v48);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  sub_10000AB0C(v10, v11);

  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    LOWORD(v14) = 0;
    v13 = v46;
    if (v12 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      goto LABEL_46;
    }

    if (v18 >= 256)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = v46;
    if (!v12)
    {
      LOWORD(v14) = BYTE6(v11);
LABEL_28:
      LOWORD(v47[65]) = v14;
      sub_1000A1CDC(v10, v11, &v47[1], &v47[65]);
      v25 = v43;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v10, v11);
      v26 = Logger.logObject.getter();
      LODWORD(v45) = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v45))
      {
        sub_1000124C8(v10, v11);

        (*(v44 + 8))(v25, v13);
        v28 = v9;
LABEL_41:
        memcpy(v48, v47, sizeof(v48));
        v37 = v28[5];
        v38 = v28[2];
        v39 = v28[3];

        AppleDevice.setRequest(requestType:data:on:)(0x14AuLL, v48, v49, 0, v38, v39);

        return sub_1000124C8(v10, v11);
      }

      v42 = v26;
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48[0] = v41;
      *v27 = 136315650;
      *(v27 + 4) = sub_100002320(0xD000000000000018, 0x80000001004B9250, v48);
      *(v27 + 12) = 2048;
      v28 = v9;
      v29 = v44;
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          v30 = 0;
          goto LABEL_40;
        }

        v32 = *(v10 + 16);
        v31 = *(v10 + 24);
        v17 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (!v17)
        {
          goto LABEL_40;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v30 = BYTE6(v11);
LABEL_40:
        *(v27 + 14) = v30;
        sub_1000124C8(v10, v11);
        *(v27 + 22) = 2080;
        v33 = Data.hexString.getter(v10, v11);
        v35 = sub_100002320(v33, v34, v48);

        *(v27 + 24) = v35;
        v36 = v42;
        _os_log_impl(&_mh_execute_header, v42, v45, "nan_send: %s  APPLE80211_IOC_NAN_VENDOR_PAYLOAD pairing custom attribute count %ld attributes %s", v27, 0x20u);
        swift_arrayDestroy();

        (*(v29 + 8))(v43, v46);
        goto LABEL_41;
      }

      LODWORD(v30) = HIDWORD(v10) - v10;
      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        v30 = v30;
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_47;
    }

    if (HIDWORD(v10) - v10 >= 256)
    {
      goto LABEL_23;
    }
  }

  if (v12 == 2)
  {
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    v17 = __OFSUB__(v19, v20);
    v21 = v19 - v20;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  LODWORD(v21) = HIDWORD(v10) - v10;
  if (__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v21 = v21;
LABEL_18:
  if (v21 < 0xFFFF)
  {
    if (v12 != 2)
    {
      LODWORD(v14) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_50;
      }

      v14 = v14;
      goto LABEL_26;
    }

    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    v17 = __OFSUB__(v22, v23);
    v14 = v22 - v23;
    if (!v17)
    {
LABEL_26:
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v14 >> 16))
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    __break(1u);
  }

LABEL_23:
  sub_10000B02C();
  swift_allocError();
  *v24 = xmmword_100481830;
  *(v24 + 16) = 0;
  swift_willThrow();
  return sub_1000124C8(v10, v11);
}

uint64_t IO80211Driver<>.transmitAllFrames(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v4 = type metadata accessor for Logger();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v56[1], 0, 260);
  v56[0] = 23;
  v8 = sub_100033AA8(_swiftEmptyArrayStorage);
  v9 = type metadata accessor for BinaryEncoder();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480A90;
  *(v10 + 32) = v8;
  v57[3] = v9;
  v57[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v57[0] = v10;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  v11 = v55;
  Array<A>.encode(to:)();
  if (v11)
  {

    return sub_100002A00(v57);
  }

  v50 = v7;
  v55 = v4;
  v13 = v54;
  sub_100002A00(v57);
  swift_beginAccess();
  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  sub_10000AB0C(v15, v14);

  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    LOWORD(v18) = 0;
    v17 = v55;
    if (v16 != 2)
    {
      goto LABEL_21;
    }

    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
      goto LABEL_40;
    }

    if (v22 > 255)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17 = v55;
    if (!v16)
    {
      LOWORD(v18) = BYTE6(v14);
LABEL_21:
      LOWORD(v56[65]) = v18;
      sub_1000A1CDC(v15, v14, &v56[1], &v56[65]);
      v25 = v50;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v15, v14);
      v26 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v26, v48);
      v49 = v14;
      if (!v27)
      {
        sub_1000124C8(v15, v14);

        (*(v51 + 8))(v25, v17);
        v30 = v53;
LABEL_35:
        memcpy(v57, v56, sizeof(v57));
        type metadata accessor for apple80211_nan_vendor_payload(0);
        v42 = v41;
        v43 = *(v30 + 8);
        v44 = *(v52 + 16);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100110D80(330, v57, v13, v42, v43, v44, AssociatedConformanceWitness);
        v33 = v15;
        v34 = v49;
        return sub_1000124C8(v33, v34);
      }

      v47 = v26;
      v28 = v14;
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57[0] = v46;
      *v29 = 136315650;
      *(v29 + 4) = sub_100002320(0xD000000000000018, 0x80000001004B9250, v57);
      *(v29 + 12) = 2048;
      if (v16 > 1)
      {
        v30 = v53;
        if (v16 != 2)
        {
          v31 = 0;
          goto LABEL_34;
        }

        v36 = *(v15 + 16);
        v35 = *(v15 + 24);
        v21 = __OFSUB__(v35, v36);
        v31 = v35 - v36;
        if (!v21)
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else
      {
        v30 = v53;
        if (!v16)
        {
          v31 = BYTE6(v28);
LABEL_34:
          *(v29 + 14) = v31;
          sub_1000124C8(v15, v28);
          *(v29 + 22) = 2080;
          v37 = Data.hexString.getter(v15, v28);
          v39 = sub_100002320(v37, v38, v57);

          *(v29 + 24) = v39;
          v40 = v47;
          _os_log_impl(&_mh_execute_header, v47, v48, "nan_send: %s  APPLE80211_IOC_NAN_VENDOR_PAYLOAD pairing custom attribute count %ld attributes %s", v29, 0x20u);
          swift_arrayDestroy();

          (*(v51 + 8))(v50, v55);
          goto LABEL_35;
        }
      }

      LODWORD(v31) = HIDWORD(v15) - v15;
      if (!__OFSUB__(HIDWORD(v15), v15))
      {
        v31 = v31;
        goto LABEL_34;
      }

LABEL_44:
      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v15), v15))
    {
      goto LABEL_41;
    }

    if (HIDWORD(v15) - v15 > 255)
    {
      goto LABEL_25;
    }
  }

  if (v16 == 2)
  {
    v24 = *(v15 + 16);
    v23 = *(v15 + 24);
    v21 = __OFSUB__(v23, v24);
    v18 = v23 - v24;
    if (v21)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v18 >= 0xFFFF)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  LODWORD(v18) = HIDWORD(v15) - v15;
  if (__OFSUB__(HIDWORD(v15), v15))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v18 < 0xFFFF)
  {
    v18 = v18;
LABEL_19:
    if (v18 < 0)
    {
      __break(1u);
    }

    else if (!(v18 >> 16))
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  sub_10000B02C();
  swift_allocError();
  *v32 = xmmword_100481830;
  *(v32 + 16) = 0;
  swift_willThrow();
  v33 = v15;
  v34 = v14;
  return sub_1000124C8(v33, v34);
}

uint64_t sub_1000F8578()
{
  v0 = type metadata accessor for Logger();
  v63 = *(v0 - 8);
  v1 = *(v63 + 64);
  __chkstk_darwin();
  v3 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v57 - v4;
  memset(&v65[1], 0, 260);
  v65[0] = 23;
  v6 = sub_100033AA8(_swiftEmptyArrayStorage);
  v7 = type metadata accessor for BinaryEncoder();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480A90;
  *(v8 + 32) = v6;
  v66[3] = v7;
  v66[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v66[0] = v8;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  v9 = v64;
  Array<A>.encode(to:)();
  if (v9)
  {

    return sub_100002A00(v66);
  }

  v57[1] = 0;
  v59 = v3;
  v60 = v0;
  sub_100002A00(v66);
  swift_beginAccess();
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  sub_10000AB0C(v12, v11);

  v58 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v11 >> 62;
  v64 = v11;
  v61 = v11 >> 62;
  if (!v15)
  {
    sub_1000124C8(v12, v11);
    goto LABEL_17;
  }

  v57[0] = v12;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v66[0] = v18;
  *v17 = 136315394;
  *(v17 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v66);
  *(v17 + 12) = 2048;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v12 = v57[0];
    v21 = *(v57[0] + 16);
    v20 = *(v57[0] + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v12 = v57[0];
    LODWORD(v19) = HIDWORD(v57[0]) - LODWORD(v57[0]);
    if (__OFSUB__(HIDWORD(v57[0]), v57[0]))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v19 = v19;
    goto LABEL_16;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v19 = BYTE6(v11);
LABEL_15:
  v12 = v57[0];
LABEL_16:
  *(v17 + 14) = v19;
  sub_1000124C8(v12, v11);
  _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  attributeBuffer.count %ld", v17, 0x16u);
  sub_100002A00(v18);

LABEL_17:

  v23 = *(v63 + 8);
  v24 = v60;
  v23(v5, v60);
  v25 = v61;
  if (v61 > 1)
  {
    if (v61 != 2)
    {
      goto LABEL_46;
    }

    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    v22 = __OFSUB__(v26, v27);
    v28 = v26 - v27;
    if (v22)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (!v28)
    {
      goto LABEL_46;
    }
  }

  else if (v61)
  {
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v12) == v12)
    {
      goto LABEL_46;
    }
  }

  else if (!BYTE6(v64))
  {
    goto LABEL_46;
  }

  if (!v61)
  {
    v57[0] = v23;
    v32 = v64;
    LOWORD(v33) = BYTE6(v64);
    goto LABEL_51;
  }

  if (v61 == 2)
  {
    v30 = *(v12 + 16);
    v29 = *(v12 + 24);
    v22 = __OFSUB__(v29, v30);
    v31 = v29 - v30;
    if (v22)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v31 >= 256)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (HIDWORD(v12) - v12 >= 256)
    {
      goto LABEL_46;
    }
  }

  if (v61 == 2)
  {
    v35 = *(v12 + 16);
    v34 = *(v12 + 24);
    v22 = __OFSUB__(v34, v35);
    v36 = v34 - v35;
    if (!v22)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  LODWORD(v36) = HIDWORD(v12) - v12;
  if (__OFSUB__(HIDWORD(v12), v12))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v36 = v36;
LABEL_41:
  if (v36 < 0xFFFF)
  {
    if (v25 != 2)
    {
      LODWORD(v33) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v33 = v33;
      goto LABEL_49;
    }

    v38 = *(v12 + 16);
    v37 = *(v12 + 24);
    v22 = __OFSUB__(v37, v38);
    v33 = v37 - v38;
    if (!v22)
    {
LABEL_49:
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v57[0] = v23;
        v32 = v64;
        if (!(v33 >> 16))
        {
LABEL_51:
          LOWORD(v65[65]) = v33;
          sub_1000A1CDC(v12, v32, &v65[1], &v65[65]);
          v42 = v59;
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v12, v32);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v43, v44))
          {
            sub_1000124C8(v12, v32);

            (v57[0])(v42, v24);
            v47 = v62;
LABEL_62:
            memcpy(v66, v65, sizeof(v66));
            v54 = v47[5];
            v55 = v47[2];
            v56 = v47[3];

            AppleDevice.setRequest(requestType:data:on:)(0x243uLL, v66, v67, 0, v55, v56);

            v40 = v12;
            v41 = v32;
            return sub_1000124C8(v40, v41);
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v66[0] = v46;
          *v45 = 136315650;
          *(v45 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v66);
          *(v45 + 12) = 2048;
          v47 = v62;
          v58 = v46;
          if (v61 == 2)
          {
            v50 = *(v12 + 16);
            v49 = *(v12 + 24);
            v22 = __OFSUB__(v49, v50);
            v48 = v49 - v50;
            if (!v22)
            {
              goto LABEL_61;
            }

            __break(1u);
          }

          else if (v61 == 1)
          {
            LODWORD(v48) = HIDWORD(v12) - v12;
            if (!__OFSUB__(HIDWORD(v12), v12))
            {
              v48 = v48;
LABEL_61:
              *(v45 + 14) = v48;
              sub_1000124C8(v12, v32);
              *(v45 + 22) = 2080;
              v51 = Data.hexString.getter(v12, v32);
              v53 = sub_100002320(v51, v52, v66);

              *(v45 + 24) = v53;
              _os_log_impl(&_mh_execute_header, v43, v44, "nan_send: %s APPLE80211_IOC_NAN_VENDOR_PAYLOAD_COMPACT compact custom attribute count %ld attributes %s", v45, 0x20u);
              swift_arrayDestroy();

              (v57[0])(v59, v60);
              goto LABEL_62;
            }

LABEL_73:
            __break(1u);
          }

          v48 = BYTE6(v32);
          goto LABEL_61;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
  }

LABEL_46:
  sub_10000B02C();
  swift_allocError();
  *v39 = xmmword_100481830;
  *(v39 + 16) = 0;
  swift_willThrow();
  v40 = v12;
  v41 = v64;
  return sub_1000124C8(v40, v41);
}

uint64_t IO80211Driver<>.transmitCompactFrames(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v71 = a2;
  v72 = a3;
  v4 = type metadata accessor for Logger();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin();
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v63 - v8;
  memset(&v75[1], 0, 260);
  v75[0] = 23;
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryEncoder();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100480A90;
  *(v12 + 32) = v10;
  v76[3] = v11;
  v76[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v76[0] = v12;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  v13 = v74;
  Array<A>.encode(to:)();
  if (v13)
  {

    return sub_100002A00(v76);
  }

  v66 = v7;
  v67 = v4;
  sub_100002A00(v76);
  swift_beginAccess();
  v16 = *(v12 + 16);
  v15 = *(v12 + 24);
  sub_10000AB0C(v16, v15);

  v65 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v16, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v15 >> 62;
  v74 = v16;
  v68 = v15 >> 62;
  v69 = v15;
  if (!v19)
  {
    sub_1000124C8(v16, v15);
    goto LABEL_16;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v76[0] = v22;
  *v21 = 136315394;
  *(v21 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v76);
  *(v21 + 12) = 2048;
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v23 = 0;
      goto LABEL_15;
    }

    v25 = *(v74 + 16);
    v24 = *(v74 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v23) = HIDWORD(v74) - v74;
    if (__OFSUB__(HIDWORD(v74), v74))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v23 = v23;
    goto LABEL_15;
  }

  if (v20)
  {
    goto LABEL_12;
  }

  v23 = BYTE6(v15);
LABEL_15:
  *(v21 + 14) = v23;
  sub_1000124C8(v74, v15);
  _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  attributeBuffer.count %ld", v21, 0x16u);
  sub_100002A00(v22);

LABEL_16:

  v27 = *(v73 + 8);
  v28 = v67;
  v27(v9, v67);
  v29 = v72;
  v30 = v66;
  if (v68 > 1)
  {
    v31 = v74;
    if (v68 != 2)
    {
      goto LABEL_48;
    }

    v33 = *(v74 + 16);
    v32 = *(v74 + 24);
    v26 = __OFSUB__(v32, v33);
    v34 = v32 - v33;
    if (v26)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!v34)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v31 = v74;
    if (v68)
    {
      if (__OFSUB__(HIDWORD(v74), v74))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (HIDWORD(v74) == v74)
      {
        goto LABEL_48;
      }
    }

    else if (!BYTE6(v69))
    {
      goto LABEL_48;
    }
  }

  if (!v68)
  {
    v38 = v69;
    LOWORD(v39) = BYTE6(v69);
LABEL_43:
    LOWORD(v75[65]) = v39;
    sub_1000A1CDC(v31, v38, &v75[1], &v75[65]);
    Logger.init(subsystem:category:)();
    sub_10000AB0C(v31, v38);
    v42 = Logger.logObject.getter();
    LODWORD(v74) = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v74))
    {
      sub_1000124C8(v31, v38);

      v27(v30, v28);
      v50 = v70;
      v51 = v71;
LABEL_54:
      memcpy(v76, v75, sizeof(v76));
      type metadata accessor for apple80211_nan_vendor_payload(0);
      v59 = v58;
      v60 = *(v29 + 8);
      v61 = *(v50 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_100110D80(579, v76, v51, v59, v60, v61, AssociatedConformanceWitness);
      v48 = v31;
      v49 = v38;
      return sub_1000124C8(v48, v49);
    }

    v64 = v42;
    v65 = v27;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v76[0] = v44;
    *v43 = 136315650;
    *(v43 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v76);
    *(v43 + 12) = 2048;
    v63 = v44;
    if (v68 == 2)
    {
      v53 = *(v31 + 16);
      v52 = *(v31 + 24);
      v26 = __OFSUB__(v52, v53);
      v45 = v52 - v53;
      if (!v26)
      {
        v46 = v71;
        goto LABEL_53;
      }

LABEL_66:
      __break(1u);
    }

    if (v68 != 1)
    {
      v46 = v71;
      v45 = BYTE6(v38);
      goto LABEL_53;
    }

    LODWORD(v45) = HIDWORD(v31) - v31;
    v46 = v71;
    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v45 = v45;
LABEL_53:
      *(v43 + 14) = v45;
      sub_1000124C8(v31, v38);
      *(v43 + 22) = 2080;
      v54 = Data.hexString.getter(v31, v38);
      v56 = sub_100002320(v54, v55, v76);

      *(v43 + 24) = v56;
      v57 = v64;
      _os_log_impl(&_mh_execute_header, v64, v74, "nan_send: %s APPLE80211_IOC_NAN_VENDOR_PAYLOAD_COMPACT compact custom attribute count %ld attributes %s", v43, 0x20u);
      swift_arrayDestroy();

      v65(v66, v67);
      v29 = v72;
      v50 = v70;
      v51 = v46;
      goto LABEL_54;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v68 == 2)
  {
    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    v26 = __OFSUB__(v35, v36);
    v37 = v35 - v36;
    if (v26)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v37 > 255)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v31), v31))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (HIDWORD(v31) - v31 > 255)
    {
      goto LABEL_48;
    }
  }

  if (v68 == 2)
  {
    v41 = *(v31 + 16);
    v40 = *(v31 + 24);
    v26 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v26)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v39 >= 0xFFFF)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  LODWORD(v39) = HIDWORD(v31) - v31;
  if (__OFSUB__(HIDWORD(v31), v31))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v39 < 0xFFFF)
  {
    v39 = v39;
LABEL_41:
    if (v39 < 0)
    {
      __break(1u);
    }

    else
    {
      v38 = v69;
      if (!(v39 >> 16))
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_48:
  sub_10000B02C();
  swift_allocError();
  *v47 = xmmword_100481830;
  *(v47 + 16) = 0;
  swift_willThrow();
  v48 = v31;
  v49 = v69;
  return sub_1000124C8(v48, v49);
}

uint64_t sub_1000F967C(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v60 - v8;
  __chkstk_darwin();
  v10 = &v60 - v9;
  v66 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v64 = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v62 = v1;
    v16 = v4;
    v17 = v3;
    v18 = v15;
    v71[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v71);
    _os_log_impl(&_mh_execute_header, v11, v12, "nan_send: %s calling NAN_ADDITIONAL_ATTR", v14, 0xCu);
    sub_100002A00(v18);
    v3 = v17;
    v4 = v16;
    v2 = v62;
  }

  v65 = v4[1];
  v65(v10, v3);
  *(&v71[30] + 4) = 0u;
  *(&v71[28] + 4) = 0u;
  *(&v71[26] + 4) = 0u;
  *(&v71[24] + 4) = 0u;
  *(&v71[22] + 4) = 0u;
  *(&v71[20] + 4) = 0u;
  *(&v71[18] + 4) = 0u;
  *(&v71[16] + 4) = 0u;
  *(&v71[14] + 4) = 0u;
  *(&v71[12] + 4) = 0u;
  *(&v71[10] + 4) = 0u;
  *(&v71[8] + 4) = 0u;
  *(&v71[6] + 4) = 0u;
  *(&v71[4] + 4) = 0u;
  *(&v71[2] + 4) = 0u;
  *(v71 + 4) = 0u;
  HIDWORD(v71[32]) = 0;
  LODWORD(v71[0]) = 23;
  v19 = sub_100033AA8(_swiftEmptyArrayStorage);
  v20 = type metadata accessor for BinaryEncoder();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100480A90;
  *(v21 + 32) = v19;
  v69[3] = v20;
  v69[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v69[0] = v21;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  Array<A>.encode(to:)();
  if (v2)
  {

    return sub_100002A00(v69);
  }

  v68 = v3;
  sub_100002A00(v69);
  swift_beginAccess();
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  sub_10000AB0C(v24, v23);

  v25 = v67;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v24, v23);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  v28 = v23 >> 62;
  if (os_log_type_enabled(v26, v27))
  {
    v62 = v24;
    v29 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v69[0] = v24;
    *v29 = 136315394;
    *(v29 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v69);
    *(v29 + 12) = 2048;
    v61 = v23 >> 62;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v33 = *(v62 + 16);
        v32 = *(v62 + 24);
        v34 = __OFSUB__(v32, v33);
        v30 = v32 - v33;
        if (v34)
        {
          __break(1u);
LABEL_16:
          LODWORD(v31) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v31 = v31;
          goto LABEL_24;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v28)
    {
      LODWORD(v30) = HIDWORD(v62) - v62;
      if (__OFSUB__(HIDWORD(v62), v62))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v30 = v30;
    }

    else
    {
      v30 = BYTE6(v23);
    }

    *(v29 + 14) = v30;
    v28 = v62;
    sub_1000124C8(v62, v23);
    _os_log_impl(&_mh_execute_header, v26, v27, "nan_send: %s  attributeBuffer.count %ld", v29, 0x16u);
    sub_100002A00(v24);
    v24 = v28;

    v27 = v65;
    v65(v67, v68);
    LODWORD(v28) = v61;
    if (v61 > 1)
    {
      goto LABEL_22;
    }

LABEL_10:
    if (!v28)
    {
      v31 = BYTE6(v23);
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_1000124C8(v24, v23);

  v27 = v65;
  v65(v25, v68);
  if (v28 <= 1)
  {
    goto LABEL_10;
  }

LABEL_22:
  if (v28 != 2)
  {
    goto LABEL_44;
  }

  v36 = v24[2];
  v35 = v24[3];
  v34 = __OFSUB__(v35, v36);
  v31 = v35 - v36;
  if (v34)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_24:
  if (!v31)
  {
    goto LABEL_44;
  }

  if (!v28)
  {
    v40 = 0;
    LOWORD(v41) = BYTE6(v23);
    goto LABEL_49;
  }

  if (v28 == 2)
  {
    v38 = v24[2];
    v37 = v24[3];
    v34 = __OFSUB__(v37, v38);
    v39 = v37 - v38;
    if (v34)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v39 >= 256)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v24) - v24 >= 256)
    {
      goto LABEL_44;
    }
  }

  if (v28 == 2)
  {
    v43 = v24[2];
    v42 = v24[3];
    v34 = __OFSUB__(v42, v43);
    v44 = v42 - v43;
    if (!v34)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v44) = HIDWORD(v24) - v24;
  if (__OFSUB__(HIDWORD(v24), v24))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v44 = v44;
LABEL_39:
  if (v44 < 0xFFFF)
  {
    if (v28 != 2)
    {
      LODWORD(v41) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v41 = v41;
      goto LABEL_47;
    }

    v46 = v24[2];
    v45 = v24[3];
    v34 = __OFSUB__(v45, v46);
    v41 = v45 - v46;
    if (!v34)
    {
LABEL_47:
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v40 = v28;
        if (!(v41 >> 16))
        {
LABEL_49:
          WORD2(v71[32]) = v41;
          sub_1000A1CDC(v24, v23, v71 + 4, &v71[32] + 4);
          v48 = v64;
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v24, v23);
          v49 = Logger.logObject.getter();
          LODWORD(v67) = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v49, v67))
          {
            sub_1000124C8(v24, v23);

            v27(v48, v68);
LABEL_60:
            memcpy(v69, v71, sizeof(v69));
            v57 = v63[5];
            v58 = v63[2];
            v59 = v63[3];

            AppleDevice.setRequest(requestType:data:on:)(0x244uLL, v69, &v70, 0, v58, v59);

            return sub_1000124C8(v24, v23);
          }

          v66 = v4;
          v50 = swift_slowAlloc();
          v69[0] = swift_slowAlloc();
          *v50 = 136315650;
          *(v50 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v69);
          *(v50 + 12) = 2048;
          if (v40 == 2)
          {
            v53 = v24[2];
            v52 = v24[3];
            v34 = __OFSUB__(v52, v53);
            v51 = v52 - v53;
            if (!v34)
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (v40 == 1)
          {
            LODWORD(v51) = HIDWORD(v24) - v24;
            if (!__OFSUB__(HIDWORD(v24), v24))
            {
              v51 = v51;
LABEL_59:
              *(v50 + 14) = v51;
              sub_1000124C8(v24, v23);
              *(v50 + 22) = 2080;
              v54 = Data.hexString.getter(v24, v23);
              v56 = sub_100002320(v54, v55, v69);

              *(v50 + 24) = v56;
              _os_log_impl(&_mh_execute_header, v49, v67, "nan_send: %s APPLE80211_IOC_NAN_ADDITIONAL_ATTR custom attribute count %ld attributes %s", v50, 0x20u);
              swift_arrayDestroy();

              v65(v64, v68);
              goto LABEL_60;
            }

LABEL_71:
            __break(1u);
          }

          v51 = BYTE6(v23);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    __break(1u);
  }

LABEL_44:
  sub_10000B02C();
  swift_allocError();
  *v47 = xmmword_100481830;
  *(v47 + 16) = 0;
  swift_willThrow();
  return sub_1000124C8(v24, v23);
}

uint64_t IO80211Driver<>.transmitPairingFrames(with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a1;
  v76 = a2;
  v74 = a4;
  v75 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v70 - v9;
  __chkstk_darwin();
  v11 = &v70 - v10;
  v78 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v77 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = v5;
    v17 = v4;
    v18 = swift_slowAlloc();
    v83[0] = v18;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v83);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s calling NAN_ADDITIONAL_ATTR", v15, 0xCu);
    sub_100002A00(v18);
    v4 = v17;
    v5 = v16;

    v19 = v16;
  }

  else
  {

    v19 = v5;
  }

  v20 = *(v19 + 8);
  v20(v11, v4);
  *(&v83[30] + 4) = 0u;
  *(&v83[28] + 4) = 0u;
  *(&v83[26] + 4) = 0u;
  *(&v83[24] + 4) = 0u;
  *(&v83[22] + 4) = 0u;
  *(&v83[20] + 4) = 0u;
  *(&v83[18] + 4) = 0u;
  *(&v83[16] + 4) = 0u;
  *(&v83[14] + 4) = 0u;
  *(&v83[12] + 4) = 0u;
  *(&v83[10] + 4) = 0u;
  *(&v83[8] + 4) = 0u;
  *(&v83[6] + 4) = 0u;
  *(&v83[4] + 4) = 0u;
  *(&v83[2] + 4) = 0u;
  *(v83 + 4) = 0u;
  HIDWORD(v83[32]) = 0;
  LODWORD(v83[0]) = 23;
  v21 = sub_100033AA8(_swiftEmptyArrayStorage);
  v22 = type metadata accessor for BinaryEncoder();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100480A90;
  *(v23 + 32) = v21;
  v82[3] = v22;
  v82[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v82[0] = v23;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute);

  v24 = v81;
  Array<A>.encode(to:)();
  if (v24)
  {

    return sub_100002A00(v82);
  }

  v73 = v5;
  v81 = v20;
  sub_100002A00(v82);
  swift_beginAccess();
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  sub_10000AB0C(v26, v27);

  v28 = v79;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v26, v27);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v27 >> 62;
  v80 = v27 >> 62;
  if (!v31)
  {
    sub_1000124C8(v26, v27);

    v36 = v28;
    goto LABEL_19;
  }

  v72 = v4;
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v82[0] = v34;
  *v33 = 136315394;
  *(v33 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v82);
  *(v33 + 12) = 2048;
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      v35 = 0;
      goto LABEL_18;
    }

    v38 = *(v26 + 16);
    v37 = *(v26 + 24);
    v39 = __OFSUB__(v37, v38);
    v35 = v37 - v38;
    if (!v39)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_15:
    LODWORD(v35) = HIDWORD(v26) - v26;
    if (__OFSUB__(HIDWORD(v26), v26))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v35 = v35;
    goto LABEL_18;
  }

  if (v32)
  {
    goto LABEL_15;
  }

  v35 = BYTE6(v27);
LABEL_18:
  *(v33 + 14) = v35;
  sub_1000124C8(v26, v27);
  _os_log_impl(&_mh_execute_header, v29, v30, "nan_send: %s  attributeBuffer.count %ld", v33, 0x16u);
  sub_100002A00(v34);

  v36 = v79;
  v4 = v72;
LABEL_19:
  v81(v36, v4);
  if (v80 > 1)
  {
    if (v80 != 2)
    {
      goto LABEL_51;
    }

    v41 = *(v26 + 16);
    v40 = *(v26 + 24);
    v39 = __OFSUB__(v40, v41);
    v42 = v40 - v41;
    if (v39)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (!v42)
    {
      goto LABEL_51;
    }
  }

  else if (v80)
  {
    if (__OFSUB__(HIDWORD(v26), v26))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (HIDWORD(v26) == v26)
    {
      goto LABEL_51;
    }
  }

  else if (!BYTE6(v27))
  {
    goto LABEL_51;
  }

  if (!v80)
  {
    LOWORD(v46) = BYTE6(v27);
    goto LABEL_46;
  }

  if (v80 == 2)
  {
    v44 = *(v26 + 16);
    v43 = *(v26 + 24);
    v39 = __OFSUB__(v43, v44);
    v45 = v43 - v44;
    if (v39)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v45 > 255)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v26), v26))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(v26) - v26 > 255)
    {
      goto LABEL_51;
    }
  }

  if (v80 == 2)
  {
    v48 = *(v26 + 16);
    v47 = *(v26 + 24);
    v39 = __OFSUB__(v47, v48);
    v46 = v47 - v48;
    if (v39)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v46 >= 0xFFFF)
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  LODWORD(v46) = HIDWORD(v26) - v26;
  if (__OFSUB__(HIDWORD(v26), v26))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v46 < 0xFFFF)
  {
    v46 = v46;
LABEL_44:
    if (v46 < 0)
    {
      __break(1u);
    }

    else if (!(v46 >> 16))
    {
LABEL_46:
      WORD2(v83[32]) = v46;
      sub_1000A1CDC(v26, v27, v83 + 4, &v83[32] + 4);
      v49 = v27;
      v50 = v77;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v26, v49);
      v51 = Logger.logObject.getter();
      LODWORD(v79) = static os_log_type_t.error.getter();
      v52 = os_log_type_enabled(v51, v79);
      v71 = v49;
      if (!v52)
      {
        sub_1000124C8(v26, v49);

        v58 = v50;
LABEL_58:
        v81(v58, v4);
        memcpy(v82, v83, 0x108uLL);
        type metadata accessor for apple80211_nan_vendor_payload(0);
        v65 = v64;
        v66 = *(v75 + 8);
        v67 = *(v74 + 16);
        v68 = v76;
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100110D80(580, v82, v68, v65, v66, v67, AssociatedConformanceWitness);
        v56 = v26;
        v57 = v71;
        return sub_1000124C8(v56, v57);
      }

      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82[0] = v78;
      *v53 = 136315650;
      *(v53 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v82);
      *(v53 + 12) = 2048;
      if (v80 == 2)
      {
        v60 = *(v26 + 16);
        v59 = *(v26 + 24);
        v39 = __OFSUB__(v59, v60);
        v54 = v59 - v60;
        if (!v39)
        {
          goto LABEL_57;
        }

        __break(1u);
      }

      else if (v80 == 1)
      {
        LODWORD(v54) = HIDWORD(v26) - v26;
        if (!__OFSUB__(HIDWORD(v26), v26))
        {
          v54 = v54;
LABEL_57:
          *(v53 + 14) = v54;
          sub_1000124C8(v26, v49);
          *(v53 + 22) = 2080;
          v61 = Data.hexString.getter(v26, v49);
          v63 = sub_100002320(v61, v62, v82);

          *(v53 + 24) = v63;
          _os_log_impl(&_mh_execute_header, v51, v79, "nan_send: %s APPLE80211_IOC_NAN_ADDITIONAL_ATTR custom attribute count %ld attributes %s", v53, 0x20u);
          swift_arrayDestroy();

          v58 = v77;
          goto LABEL_58;
        }

LABEL_69:
        __break(1u);
      }

      v54 = BYTE6(v49);
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_51:
  sub_10000B02C();
  swift_allocError();
  *v55 = xmmword_100481830;
  *(v55 + 16) = 0;
  swift_willThrow();
  v56 = v26;
  v57 = v27;
  return sub_1000124C8(v56, v57);
}

uint64_t sub_1000FA9F0(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 1);
  v31 = a1[16];
  v32 = v11;
  v13 = *(a1 + 5);
  v14.i32[0] = *(a1 + 2);
  v30 = vmovl_u8(v14);
  v15 = a1[6];
  v33 = a1[7];
  v34 = v15;
  v16 = *(a1 + 4);
  v35 = *(a1 + 3);
  v36 = v16;
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v13;
    v22 = v21;
    *v39 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B92B0, v39);
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  APPLE80211_IOC_NAN_ELECTION_ROLE", v20, 0xCu);
    sub_100002A00(v22);
    v13 = HIDWORD(v28);
  }

  (*(v6 + 8))(v9, v5);
  v23 = 0x201000303uLL >> (8 * v10);
  if (v10 >= 5)
  {
    LOBYTE(v23) = 3;
  }

  v39[0] = v23;
  *&v39[1] = v37;
  v39[3] = v38;
  v39[4] = v32;
  v39[5] = v31;
  *&v39[6] = 0;
  v40 = 0;
  v41 = vuzp1_s8(*v30.i8, *v30.i8).u32[0];
  v42 = v34;
  v43 = v33;
  v44 = 0;
  v45 = HIDWORD(v35);
  v46 = v35;
  v47 = HIDWORD(v36);
  v48 = v36;
  v49 = v12;
  v50 = v13;
  v24 = v3[5];
  v25 = v3[2];
  v26 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x14BuLL, v39, &v51, 0, v25, v26);
}

uint64_t IO80211Driver<>.update(electionParameters:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 1);
  v35 = a1[16];
  v36 = v12;
  v14 = *(a1 + 5);
  v15.i32[0] = *(a1 + 2);
  v34 = vmovl_u8(v15);
  v16 = a1[6];
  v37 = a1[7];
  v38 = v16;
  v17 = *(a1 + 3);
  v39 = *(a1 + 4);
  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    HIDWORD(v32) = v14;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = a4;
    v23 = v22;
    *v42 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B92B0, v42);
    _os_log_impl(&_mh_execute_header, v18, v19, "nan_send: %s  APPLE80211_IOC_NAN_ELECTION_ROLE", v21, 0xCu);
    sub_100002A00(v23);
    a4 = v33;

    v14 = HIDWORD(v32);
  }

  (*(v7 + 8))(v10, v6);
  v24 = 0x201000303uLL >> (8 * v11);
  if (v11 >= 5)
  {
    LOBYTE(v24) = 3;
  }

  v42[0] = v24;
  *&v42[1] = v54;
  v42[3] = v55;
  v42[4] = v36;
  v42[5] = v35;
  *&v42[6] = 0;
  v43 = 0;
  v44 = vuzp1_s8(*v34.i8, *v34.i8).u32[0];
  v45 = v38;
  v46 = v37;
  v47 = 0;
  v48 = HIDWORD(v17);
  v49 = v17;
  v50 = HIDWORD(v39);
  v51 = v39;
  v52 = v13;
  v53 = v14;
  type metadata accessor for apple80211_nan_role_cfg(0);
  v26 = v25;
  v27 = v41;
  v28 = *(v40 + 8);
  v29 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(331, v42, v27, v26, v28, v29, AssociatedConformanceWitness);
}

uint64_t sub_1000FB04C()
{
  v124 = v1;
  v120 = v0;
  v2 = __chkstk_darwin();
  v121 = type metadata accessor for Logger();
  v114 = *(v121 - 8);
  v3 = *(v114 + 64);
  __chkstk_darwin();
  v119 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v108 - v5;
  v6 = type metadata accessor for DispatchTimeInterval();
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = *(v116 + 64);
  __chkstk_darwin();
  v115 = (&v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = type metadata accessor for SHA256Digest();
  v9 = *(v123 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v126, 0xE14uLL);
  HIBYTE(v126[875]) = *v2;
  v18 = *(v2 + 16);
  v122 = *(v2 + 8);
  v118 = v18;
  SHA256.init()();
  v19 = String.lowercased()();

  v20 = v124;
  sub_1001F93A4(v19._countAndFlagsBits, v19._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v12, v123);
  v21 = *v127;
  v22 = *&v127[8];
  (*(v14 + 8))(v17, v13);
  *v127 = v21;
  *&v127[8] = v22;
  v23 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(*v127, *&v127[8]);
  KeyPath = swift_getKeyPath();

  v25 = sub_1000AEE10(v122, v118, &v126[1] + 2, KeyPath, 0xFFuLL);

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v118 = v23;
  v26 = 254;
  if (v25 < 0xFE)
  {
    v26 = v25;
  }

  HIWORD(v126[65]) = v26;
  v27 = type metadata accessor for NANSubscribe.Configuration();
  v28 = (v2 + *(v27 + 48));
  v29 = *(v28 + 1);
  v30 = *v28;
  v31 = swift_getKeyPath();
  v124 = v20;
  v32 = v31;
  v33 = swift_getKeyPath();
  sub_1001136FC(v126, v32, v33, v30, v29);

  v123 = v27;
  v34 = (v2 + *(v27 + 44));
  v35 = *(v34 + 1);
  v36 = *v34;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  sub_1001136FC(v126, v37, v38, v36, v35);

  v122 = v2;
  v39 = NANSubscribe.Configuration.serviceInfo.getter();
  v41 = v40;
  v43 = v42;
  v44 = sub_100033AA8(_swiftEmptyArrayStorage);
  v45 = type metadata accessor for BinaryEncoder();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100480A90;
  *(v46 + 32) = v44;
  *&v127[24] = v45;
  *&v127[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  *v127 = v46;

  v47 = v124;
  NANServiceInfo.encode(to:)(v127, v39, v41, v43);
  if (v47)
  {

    sub_1000124C8(v41, v43);

    sub_100002A00(v127);
    v124 = 0;
  }

  else
  {
    v124 = 0;
    sub_1000124C8(v41, v43);
    sub_100002A00(v127);
    swift_beginAccess();
    v48 = *(v46 + 16);
    v49 = *(v46 + 24);
    sub_10000AB0C(v48, v49);

    sub_10011A030(v48, v49, v125);
    memcpy(&v126[338], v125, 0x802uLL);
  }

  v51 = v116;
  v50 = v117;
  v53 = v122;
  v52 = v123;
  if (*(v122 + 32))
  {
    v54 = 2;
  }

  else
  {
    v54 = 1;
  }

  BYTE2(v126[875]) = v54;
  BYTE1(v126[875]) = *(v122 + v123[13]);
  LOBYTE(v126[876]) = 0x1008040100uLL >> (8 * *(v122 + v123[10]));
  v55 = v122 + v123[9];
  v56 = sub_100028EF8();
  v57 = v115;
  *v115 = 0x80000;
  (*(v51 + 104))(v57, enum case for DispatchTimeInterval.microseconds(_:), v50);
  v58 = sub_100028EF8();
  (*(v51 + 8))(v57, v50);
  if (!v58)
  {
    goto LABEL_58;
  }

  if (v56 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_61;
  }

  if (v56 / v58 < 0)
  {
    goto LABEL_59;
  }

  if ((v56 / v58) >> 32)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v126[896] = v56 / v58;
  v126[897] = -1;
  v59 = v52[14];
  if (*(v53 + 33))
  {
    v60 = 194;
  }

  else
  {
    v60 = 192;
  }

  if (*(v53 + 33))
  {
    v61 = 2;
  }

  else
  {
    v61 = 0;
  }

  if (*(v53 + v52[15]))
  {
    v62 = v60;
  }

  else
  {
    v62 = v61;
  }

  v63 = (v53 + v59);
  v64 = *(v53 + v59 + 16);
  if ((v64 & 0xFF00) != 0x200)
  {
    v66 = v63[1];
    *v127 = *v63;
    v65 = *v127;
    *&v127[8] = v66;
    sub_10000AB0C(*v127, v66);
    sub_10000AB0C(v65, v66);
    v67 = DataProtocol.copyBytes(to:)();
    sub_1000124C8(*v127, *&v127[8]);
    if ((v67 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v67))
      {
        v126[877] = v67;
        sub_10011A01C(v65, v66, v64);
        LOBYTE(v126[878]) = v64;
        if ((v64 & 0x100) != 0)
        {
          v68 = 8;
        }

        else
        {
          v68 = 12;
        }

        v62 |= v68;
        v52 = v123;
        goto LABEL_31;
      }

LABEL_63:
      __break(1u);
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_31:
  v69 = v124;
  v126[898] = v62;
  v117 = &qword_1004B4E88[7];
  v70 = v113;
  Logger.init(subsystem:category:)();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v127 = v74;
    *v73 = 136315138;
    *(v73 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v127);
    _os_log_impl(&_mh_execute_header, v71, v72, "nan_send: %s  APPLE80211_IOC_NAN_SUBSCRIBE", v73, 0xCu);
    sub_100002A00(v74);

    v52 = v123;
  }

  v75 = v114;
  v116 = *(v114 + 8);
  (v116)(v70, v121);
  v76 = v120;
  v77 = v69;
  v78 = (v53 + v52[24]);
  if (v78[1] & 1) != 0 || (*(v53 + v52[20]))
  {
    goto LABEL_35;
  }

  v84 = *v78;
  *v127 = &_mh_execute_header;
  v85 = v120[5];
  v87 = v120[2];
  v86 = v120[3];

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v127, &v127[8], 0, v87, v86);
  if (v77)
  {
    goto LABEL_39;
  }

  v109 = v84;
  v111 = v84 >> 8;
  v112 = v84;

  v118 = 0;
  v110 = v75 + 8;
  v88 = 1;
  *&v89 = 136315394;
  v108 = v89;
  v114 = v86;
  v115 = v85;
  v113 = v87;
  while (1)
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    v100[2] = 0;

    AppleDevice.getRequest(requestType:data:on:)(0x33uLL, v100, (v100 + 3), 0, v87, v86);

    if (v77)
    {
    }

    v124 = 0;
    v101 = *v100;
    v102 = v100[1];

    if (v101 == v112 && v102 == v111)
    {
      break;
    }

    v104 = v119;
    Logger.init(subsystem:category:)();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v90 = swift_slowAlloc();
      *v127 = swift_slowAlloc();
      *v90 = v108;
      v91 = CountryCode.description.getter(v109);
      v93 = sub_100002320(v91, v92, v127);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = CountryCode.description.getter(v101 | (v102 << 8));
      v96 = sub_100002320(v94, v95, v127);

      *(v90 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v105, v106, "counntry code mismatch: configured %s current %s", v90, 0x16u);
      swift_arrayDestroy();
      v76 = v120;

      v97 = v119;
    }

    else
    {

      v97 = v104;
    }

    (v116)(v97, v121);
    v53 = v122;
    v77 = v124;
    v87 = v113;
    v86 = v114;
    v98 = v118;
    v99 = v118 + 1;
    sleep(2u);
    v88 = v98 < 2;
    v118 = v98 + 1;
    if (v99 == 3)
    {
      goto LABEL_54;
    }
  }

  v77 = v124;
  v86 = v114;
  v87 = v113;
LABEL_54:
  *v127 = 0;

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v127, &v127[8], 0, v87, v86);

  if (!v77)
  {
    if (!v88)
    {
      sub_10000B02C();
      swift_allocError();
      *v107 = xmmword_100481800;
      *(v107 + 16) = 1;
      return swift_willThrow();
    }

LABEL_35:
    if ((*(v53 + v123[20]) & 1) != 0 || (v79 = *(v53 + v123[23]) | (*(v53 + v123[23] + 4) << 32), (v79 & 0xFF00000000) == 0x300000000) || (result = sub_1000F6D28(v79), !v77))
    {
      memcpy(v127, v126, sizeof(v127));
      v81 = v76[5];
      v82 = v76[2];
      v83 = v76[3];

      AppleDevice.setRequest(requestType:data:on:)(0x12FuLL, v127, &v128, 0, v82, v83);
LABEL_39:
    }
  }

  return result;
}

uint64_t IO80211Driver<>.start(configuration:)()
{
  v2 = __chkstk_darwin();
  v140 = v3;
  v141 = v1;
  v135 = v0;
  v136 = v4;
  v134 = v5;
  v6 = v2;
  v137 = type metadata accessor for Logger();
  v128 = *(v137 - 8);
  v7 = *(v128 + 64);
  __chkstk_darwin();
  v133 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v120 - v9;
  v10 = type metadata accessor for DispatchTimeInterval();
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  __chkstk_darwin();
  v129 = (&v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for SHA256Digest();
  v13 = *(v139 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SHA256();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v143, 0xE14uLL);
  HIBYTE(v143[875]) = *v6;
  v22 = *(v6 + 16);
  v138 = *(v6 + 8);
  v132 = v22;
  SHA256.init()();
  v23 = String.lowercased()();

  v24 = v141;
  sub_1001F93A4(v23._countAndFlagsBits, v23._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v13 + 8))(v16, v139);
  v25 = v144[0];
  v26 = v144[1];
  (*(v18 + 8))(v21, v17);
  v144[0] = v25;
  v144[1] = v26;
  v27 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v144[0], v144[1]);
  KeyPath = swift_getKeyPath();

  v29 = sub_1000AEE10(v138, v132, &v143[1] + 2, KeyPath, 0xFFuLL);

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v132 = v27;
  v30 = 254;
  if (v29 < 0xFE)
  {
    v30 = v29;
  }

  HIWORD(v143[65]) = v30;
  v31 = type metadata accessor for NANSubscribe.Configuration();
  v32 = (v6 + *(v31 + 48));
  v33 = *(v32 + 1);
  v34 = *v32;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  sub_1001136FC(v143, v35, v36, v34, v33);

  v139 = v31;
  v37 = (v6 + *(v31 + 44));
  v38 = *(v37 + 1);
  v39 = *v37;
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  sub_1001136FC(v143, v40, v41, v39, v38);

  v138 = v6;
  v42 = NANSubscribe.Configuration.serviceInfo.getter();
  v44 = v43;
  v46 = v45;
  v47 = sub_100033AA8(_swiftEmptyArrayStorage);
  v48 = type metadata accessor for BinaryEncoder();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100480A90;
  *(v49 + 32) = v47;
  v144[3] = v48;
  v144[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v144[0] = v49;

  NANServiceInfo.encode(to:)(v144, v42, v44, v46);
  if (v24)
  {

    sub_1000124C8(v44, v46);

    sub_100002A00(v144);
    v141 = 0;
  }

  else
  {
    v141 = 0;
    sub_1000124C8(v44, v46);
    sub_100002A00(v144);
    swift_beginAccess();
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    sub_10000AB0C(v50, v51);

    sub_10011A030(v50, v51, v142);
    memcpy(&v143[338], v142, 0x802uLL);
  }

  v52 = v131;
  v54 = v138;
  v53 = v139;
  if (*(v138 + 32))
  {
    v55 = 2;
  }

  else
  {
    v55 = 1;
  }

  BYTE2(v143[875]) = v55;
  BYTE1(v143[875]) = *(v138 + v139[13]);
  LOBYTE(v143[876]) = 0x1008040100uLL >> (8 * *(v138 + v139[10]));
  v56 = v138 + v139[9];
  v57 = sub_100028EF8();
  v59 = v129;
  v58 = v130;
  *v129 = 0x80000;
  (*(v58 + 104))(v59, enum case for DispatchTimeInterval.microseconds(_:), v52);
  v60 = sub_100028EF8();
  (*(v58 + 8))(v59, v52);
  if (!v60)
  {
    goto LABEL_59;
  }

  if (v57 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_62;
  }

  if (v57 / v60 < 0)
  {
    goto LABEL_60;
  }

  if ((v57 / v60) >> 32)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v143[896] = v57 / v60;
  v143[897] = -1;
  v61 = v53[14];
  if (*(v54 + 33))
  {
    v62 = 194;
  }

  else
  {
    v62 = 192;
  }

  if (*(v54 + 33))
  {
    v63 = 2;
  }

  else
  {
    v63 = 0;
  }

  if (*(v54 + v53[15]))
  {
    v64 = v62;
  }

  else
  {
    v64 = v63;
  }

  v65 = (v54 + v61);
  v66 = *(v54 + v61 + 16);
  if ((v66 & 0xFF00) != 0x200)
  {
    v68 = v65[1];
    v144[0] = *v65;
    v67 = v144[0];
    v144[1] = v68;
    sub_10011A008(v144[0], v68, v66);
    sub_10000AB0C(v67, v68);
    v69 = DataProtocol.copyBytes(to:)();
    sub_1000124C8(v144[0], v144[1]);
    if ((v69 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v69))
      {
        v143[877] = v69;
        sub_10011A01C(v67, v68, v66);
        LOBYTE(v143[878]) = v66;
        if ((v66 & 0x100) != 0)
        {
          v70 = 8;
        }

        else
        {
          v70 = 12;
        }

        v64 |= v70;
        goto LABEL_31;
      }

LABEL_64:
      __break(1u);
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_31:
  v143[898] = v64;
  v131 = &qword_1004B4E88[7];
  v71 = v127;
  Logger.init(subsystem:category:)();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v144[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v144);
    _os_log_impl(&_mh_execute_header, v72, v73, "nan_send: %s  APPLE80211_IOC_NAN_SUBSCRIBE", v74, 0xCu);
    sub_100002A00(v75);
  }

  v76 = v128;
  v77 = *(v128 + 8);
  v77(v71, v137);
  v78 = v134;
  v79 = v136;
  v80 = (v54 + v53[24]);
  if (v80[1] & 1) != 0 || (*(v54 + v53[20]))
  {
LABEL_35:
    if ((*(v54 + v53[20]) & 1) != 0 || ((*(v54 + v53[23]) | (*(v54 + v53[23] + 4) << 32)) & 0xFF00000000) == 0x300000000)
    {
      v81 = v140;
LABEL_38:
      memcpy(v144, v143, 0xE14uLL);
      type metadata accessor for apple80211_nan_subscribe_data(0);
      v83 = v82;
      v84 = *(v78 + 8);
      v85 = *(v136 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(303, v144, v81, v83, v84, v85, AssociatedConformanceWitness);
    }

    v81 = v140;
    v97 = v141;
    result = (*(v136 + 144))();
    if (!v97)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v123 = *v80;
    v144[0] = &_mh_execute_header;
    type metadata accessor for apple80211_nan_country_code_sync(0);
    v88 = v78;
    v90 = v89;
    v91 = *(v88 + 8);
    v92 = *(v79 + 16);
    v93 = v140;
    swift_getAssociatedTypeWitness();
    v94 = swift_getAssociatedConformanceWitness();
    v121 = v90;
    v130 = v92;
    v95 = v141;
    result = sub_100110D80(577, v144, v93, v90, v91, v92, v94);
    v141 = v95;
    if (!v95)
    {
      v128 = v94;
      v129 = v91;
      v132 = 0;
      v126 = v123 >> 8;
      LODWORD(v127) = v123;
      v124 = v76 + 8;
      v98 = 1;
      *&v96 = 136315394;
      v122 = v96;
      v99 = v130;
      v78 = v134;
      v125 = v77;
      while (1)
      {
        v103 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
        v104 = v141;
        result = sub_100110570(51, v103, 0, 0, v140, v103, v129, v99, v128);
        v141 = v104;
        if (v104)
        {
          break;
        }

        v105 = LOBYTE(v144[0]);
        v106 = BYTE1(v144[0]);
        if (LOBYTE(v144[0]) == v127 && BYTE1(v144[0]) == v126)
        {
          v53 = v139;
          v99 = v130;
LABEL_55:
          v144[0] = 0;
          v118 = v141;
          result = sub_100110D80(577, v144, v140, v121, v129, v99, v128);
          v141 = v118;
          if (v118)
          {
            return result;
          }

          if (!v98)
          {
            sub_10000B02C();
            swift_allocError();
            *v119 = xmmword_100481800;
            *(v119 + 16) = 1;
            return swift_willThrow();
          }

          goto LABEL_35;
        }

        v108 = v133;
        Logger.init(subsystem:category:)();
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v144[0] = swift_slowAlloc();
          *v111 = v122;
          v112 = CountryCode.description.getter(v123);
          v114 = sub_100002320(v112, v113, v144);

          *(v111 + 4) = v114;
          *(v111 + 12) = 2080;
          v115 = CountryCode.description.getter(v105 | (v106 << 8));
          v117 = sub_100002320(v115, v116, v144);

          *(v111 + 14) = v117;
          _os_log_impl(&_mh_execute_header, v109, v110, "counntry code mismatch: configured %s current %s", v111, 0x16u);
          swift_arrayDestroy();

          v78 = v134;

          v100 = v133;
        }

        else
        {

          v100 = v108;
        }

        v125(v100, v137);
        v54 = v138;
        v53 = v139;
        v99 = v130;
        v101 = v132;
        v102 = v132 + 1;
        sleep(2u);
        v98 = v101 < 2;
        v132 = v102;
        if (v102 == 3)
        {
          goto LABEL_55;
        }
      }
    }
  }

  return result;
}

{
  v2 = __chkstk_darwin();
  v158 = v1;
  v156 = v0;
  v150 = v3;
  v151 = v4;
  v153 = v5;
  v6 = v2;
  v152 = type metadata accessor for Logger();
  v145 = *(v152 - 8);
  v7 = *(v145 + 64);
  __chkstk_darwin();
  v155 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v137 - v9;
  v10 = type metadata accessor for DispatchTimeInterval();
  v147 = *(v10 - 8);
  v148 = v10;
  v11 = *(v147 + 64);
  __chkstk_darwin();
  v146 = (&v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for SHA256Digest();
  v13 = *(v157 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SHA256();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v161, 0x15C8uLL);
  HIBYTE(v161[851]) = *v6;
  v22 = *(v6 + 16);
  v154 = *(v6 + 8);
  *&v149 = v22;
  SHA256.init()();
  v23 = String.lowercased()();

  v24 = v158;
  sub_1001F93A4(v23._countAndFlagsBits, v23._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v13 + 8))(v16, v157);
  v25 = v162[0];
  v26 = v162[1];
  (*(v18 + 8))(v21, v17);
  v162[0] = v25;
  v162[1] = v26;
  v27 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v162[0], v162[1]);
  KeyPath = swift_getKeyPath();

  v29 = sub_1000AEE10(v154, v149, &v161[1] + 2, KeyPath, 0xFFuLL);

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v142 = v27;
  v30 = 254;
  if (v29 < 0xFE)
  {
    v30 = v29;
  }

  HIWORD(v161[65]) = v30;
  v31 = *(v6 + 48);
  v32 = *(v6 + 40);
  v33 = swift_getKeyPath();
  v158 = v24;
  v34 = v33;
  v35 = swift_getKeyPath();
  sub_1001136FC(v161, v34, v35, v32, v31);

  v36 = *(v6 + 64);
  v37 = *(v6 + 56);
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  sub_1001136FC(v161, v38, v39, v37, v36);

  v157 = v6;
  v40 = NANPublish.Configuration.serviceInfo.getter();
  v42 = v41;
  v44 = v43;
  v45 = sub_100033AA8(_swiftEmptyArrayStorage);
  v46 = type metadata accessor for BinaryEncoder();
  v47 = swift_allocObject();
  v149 = xmmword_100480A90;
  *(v47 + 16) = xmmword_100480A90;
  *(v47 + 32) = v45;
  v162[3] = v46;
  v143 = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v162[4] = v143;
  v162[0] = v47;

  v48 = v158;
  NANServiceInfo.encode(to:)(v162, v40, v42, v44);
  if (v48)
  {

    sub_1000124C8(v42, v44);

    sub_100002A00(v162);
    v158 = 0;
  }

  else
  {
    v158 = 0;
    sub_1000124C8(v42, v44);
    sub_100002A00(v162);
    swift_beginAccess();
    v49 = *(v47 + 16);
    v50 = *(v47 + 24);
    sub_10000AB0C(v49, v50);

    sub_10011A030(v49, v50, v159);
    memcpy(&v161[338], v159, 0x802uLL);
  }

  v51 = v157;
  LOBYTE(v161[873]) = v157[32];
  BYTE1(v161[851]) = v157[72] + 1;
  if (v157[73])
  {
    v52 = 1;
  }

  else
  {
    v52 = 2;
  }

  BYTE2(v161[851]) = v52;
  LOBYTE(v161[851]) = v157[75];
  v53 = type metadata accessor for NANPublish.Configuration();
  LOBYTE(v161[852]) = 0x1008040100uLL >> (8 * v51[v53[19]]);
  v154 = v53;
  v54 = &v51[v53[18]];
  v55 = sub_100028EF8();
  v57 = v146;
  v56 = v147;
  *v146 = 0x80000;
  v58 = v148;
  (*(v56 + 104))(v57, enum case for DispatchTimeInterval.microseconds(_:), v148);
  v59 = sub_100028EF8();
  (*(v56 + 8))(v57, v58);
  if (!v59)
  {
    goto LABEL_79;
  }

  if (v55 == 0x8000000000000000 && v59 == -1)
  {
LABEL_82:
    __break(1u);
  }

  if (v55 / v59 < 0)
  {
    goto LABEL_80;
  }

  if ((v55 / v59) >> 32)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v161[854] = v55 / v59;
  v161[855] = -1;
  v161[856] = v51[74];
  if (v51[76])
  {
    v161[857] = 2;
    v60 = v154;
    if (v51[v154[20]] != 1)
    {
      goto LABEL_21;
    }

    v61 = 50;
  }

  else
  {
    v161[857] = 0;
    v60 = v154;
    if ((v51[v154[20]] & 1) == 0)
    {
      goto LABEL_21;
    }

    v61 = 48;
  }

  v161[857] = v61;
LABEL_21:
  v62 = &v51[v60[21]];
  v63 = *(v62 + 2);
  if (*(v63 + 16))
  {
    v64 = 68;
  }

  else
  {
    v64 = 4;
  }

  v65 = v64 | 0x200;
  v66 = v51[v60[34]];
  v67 = v64 | 0x600;
  if ((v66 & 1) == 0)
  {
    v67 = v65;
  }

  if (v66 == 2)
  {
    v67 = v65;
  }

  v68 = v51[77];
  if (v68)
  {
    v69 = 3;
  }

  else
  {
    v69 = 1;
  }

  if (v68 == 2)
  {
    v70 = 0;
  }

  else
  {
    v70 = v69;
  }

  LOWORD(v161[858]) = v67 | v70;
  v71 = *(v51 + 44);
  v161[1388] = *(v51 + 21);
  LOWORD(v161[1389]) = v71;
  v72 = v62[2];
  if (!v62[2])
  {
    goto LABEL_37;
  }

  if (v72 == 1)
  {
    v72 = 5;
LABEL_37:
    v161[872] = v72;
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v74 = v73 & 1;
    goto LABEL_39;
  }

  v161[872] = 5;

  v74 = 1;
LABEL_39:
  LOBYTE(v161[871]) = v74;
  v75 = NANGenericServiceProtocol.packetData(for:)(3, *(v62 + 1));
  if (v76 >> 60 == 15)
  {
    v77 = 0;
  }

  else
  {
    v77 = v75;
  }

  if (v76 >> 60 == 15)
  {
    v78 = 0xC000000000000000;
  }

  else
  {
    v78 = v76;
  }

  v79 = sub_100033AA8(_swiftEmptyArrayStorage);
  v80 = swift_allocObject();
  *(v80 + 16) = v149;
  *(v80 + 32) = v79;
  v162[3] = v46;
  v162[4] = v143;
  v162[0] = v80;

  v81 = v158;
  NANServiceInfo.encode(to:)(v162, 2, v77, v78);
  if (v81)
  {

    sub_1000124C8(v77, v78);

    sub_100002A00(v162);
    v158 = 0;
  }

  else
  {
    v158 = 0;
    sub_1000124C8(v77, v78);
    sub_100002A00(v162);
    swift_beginAccess();
    v82 = *(v80 + 16);
    v83 = *(v80 + 24);
    sub_10000AB0C(v82, v83);

    sub_10011A030(v82, v83, v160);
    memcpy(&v161[875] + 2, v160, 0x802uLL);
  }

  v84 = v155;
  if (*(v63 + 16))
  {
    v86 = *(v63 + 40);
    v85 = *(v63 + 48);
    v87 = *(v63 + 56);
    v88 = *(v63 + 64);
    v89 = *(v63 + 80);
    BYTE2(v161[859]) = *(v63 + 32) + 1;
    v162[0] = v86;
    v162[1] = v85;
    sub_10000AB0C(v86, v85);
    sub_10005D67C(v87, v88);

    sub_10000AB0C(v86, v85);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v162[0], v162[1]);
    if (v88 >> 60 == 15)
    {
      sub_1000124C8(v86, v85);
      sub_100017554(v87, v88);
    }

    else
    {
      v162[0] = v87;
      v162[1] = v88;
      sub_10000AB0C(v87, v88);
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v86, v85);
      sub_100017554(v87, v88);

      sub_1000124C8(v162[0], v162[1]);
    }

    v84 = v155;
  }

  else
  {
    BYTE2(v161[859]) = 0;
  }

  *&v149 = &qword_1004B4E88[7];
  v90 = v144;
  Logger.init(subsystem:category:)();
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  v93 = os_log_type_enabled(v91, v92);
  v94 = v157;
  if (v93)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v162[0] = v96;
    *v95 = 136315138;
    *(v95 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v162);
    _os_log_impl(&_mh_execute_header, v91, v92, "nan_send: %s  APPLE80211_IOC_NAN_PUBLISH", v95, 0xCu);
    sub_100002A00(v96);
  }

  v97 = v145;
  v148 = *(v145 + 8);
  v148(v90, v152);
  v99 = v153;
  v98 = v154;
  v101 = v150;
  v100 = v151;
  v102 = &v94[v154[33]];
  if (v102[1] & 1) != 0 || (v94[v154[29]])
  {
    v103 = v158;
LABEL_59:
    if ((v94[v98[29]] & 1) != 0 || ((*&v94[v98[32]] | (*&v94[v98[32] + 4] << 32)) & 0xFF00000000) == 0x300000000 || (result = (*(v151 + 144))(), !v103))
    {
      memcpy(v162, v161, sizeof(v162));
      type metadata accessor for apple80211_nan_publish_data(0);
      v106 = v105;
      v107 = *(v101 + 8);
      v108 = *(v151 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(300, v162, v99, v106, v107, v108, AssociatedConformanceWitness);
    }
  }

  else
  {
    v138 = *v102;
    v162[0] = &_mh_execute_header;
    type metadata accessor for apple80211_nan_country_code_sync(0);
    v111 = v110;
    v112 = *(v101 + 8);
    v113 = *(v100 + 16);
    swift_getAssociatedTypeWitness();
    v114 = swift_getAssociatedConformanceWitness();
    v146 = v113;
    v115 = v158;
    result = sub_100110D80(577, v162, v99, v111, v112, v113, v114);
    v158 = v115;
    if (!v115)
    {
      v144 = v114;
      v145 = v112;
      v117 = 0;
      LODWORD(v143) = v138;
      LODWORD(v142) = v138 >> 8;
      v140 = v97 + 8;
      v118 = 1;
      *&v116 = 136315394;
      v137 = v116;
      v101 = v150;
      v141 = v111;
      while (1)
      {
        v122 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
        v123 = v158;
        result = sub_100110570(51, v122, 0, 0, v99, v122, v145, v146, v144);
        v158 = v123;
        if (v123)
        {
          break;
        }

        v147 = v117;
        v124 = LOBYTE(v162[0]);
        v125 = BYTE1(v162[0]);
        if (LOBYTE(v162[0]) == v143 && BYTE1(v162[0]) == v142)
        {
          v99 = v153;
          v119 = v141;
LABEL_75:
          v162[0] = 0;
          v103 = v158;
          result = sub_100110D80(577, v162, v99, v119, v145, v146, v144);
          if (v103)
          {
            return result;
          }

          v98 = v154;
          if (!v118)
          {
            sub_10000B02C();
            swift_allocError();
            *v136 = xmmword_100481800;
            *(v136 + 16) = 1;
            return swift_willThrow();
          }

          goto LABEL_59;
        }

        Logger.init(subsystem:category:)();
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v162[0] = v139;
          *v129 = v137;
          v130 = CountryCode.description.getter(v138);
          v132 = sub_100002320(v130, v131, v162);

          *(v129 + 4) = v132;
          *(v129 + 12) = 2080;
          v133 = CountryCode.description.getter(v124 | (v125 << 8));
          v135 = sub_100002320(v133, v134, v162);

          *(v129 + 14) = v135;
          v94 = v157;
          _os_log_impl(&_mh_execute_header, v127, v128, "counntry code mismatch: configured %s current %s", v129, 0x16u);
          swift_arrayDestroy();
          v84 = v155;

          v101 = v150;
        }

        v148(v84, v152);
        v99 = v153;
        v119 = v141;
        v120 = v147;
        v121 = v147 + 1;
        sleep(2u);
        v118 = v120 < 2;
        v117 = v121;
        if (v121 == 3)
        {
          goto LABEL_75;
        }
      }
    }
  }

  return result;
}

{
  v2 = __chkstk_darwin();
  v71 = v3;
  v72 = v0;
  v69 = v5;
  v70 = v4;
  v6 = v2;
  v7 = type metadata accessor for Logger();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin();
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SHA256Digest();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SHA256();
  v14 = *(v64 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v74, 0x86CuLL);
  LOBYTE(v74[0]) = *v6;
  BYTE2(v74[0]) = *(v6 + 24);
  v18 = *(v6 + 25);
  *(&v74[5] + 1) = *(v6 + 29);
  v19 = *(v6 + 3);
  *(&v74[2] + 3) = *(v6 + 1);
  *(&v74[3] + 1) = vzip1_s32(v19, v18);
  HIBYTE(v74[0]) = *(v6 + 7);
  v20 = *(v6 + 8);
  v21 = *(v6 + 16);
  SHA256.init()();
  v22 = String.lowercased()();

  sub_1001F93A4(v22._countAndFlagsBits, v22._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v10 + 8))(v13, v65);
  v23 = v75[0];
  v24 = v75[1];
  (*(v14 + 8))(v17, v64);
  v75[0] = v23;
  v75[1] = v24;
  v25 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v75[0], v75[1]);
  v26 = *(v6 + 32);
  v64 = v25;
  if (!v26)
  {
    goto LABEL_4;
  }

  if (v26 == 1)
  {
    v26 = 5;
LABEL_4:
    v74[531] = v26;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v28 = v27 & 1;
    goto LABEL_6;
  }

  v74[531] = 5;

  v28 = 1;
LABEL_6:
  LOBYTE(v74[530]) = v28;
  v29 = NANGenericServiceProtocol.packetData(for:)(3, *(v6 + 40));
  if (v30 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  if (v30 >> 60 == 15)
  {
    v32 = 0xC000000000000000;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_100033AA8(_swiftEmptyArrayStorage);
  v34 = type metadata accessor for BinaryEncoder();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100480A90;
  *(v35 + 32) = v33;
  v75[3] = v34;
  v75[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v75[0] = v35;

  NANServiceInfo.encode(to:)(v75, 2, v31, v32);
  if (v1)
  {

    sub_1000124C8(v31, v32);

    sub_100002A00(v75);
  }

  else
  {
    sub_1000124C8(v31, v32);
    sub_100002A00(v75);
    swift_beginAccess();
    v36 = *(v35 + 16);
    v37 = *(v35 + 24);
    sub_10000AB0C(v36, v37);

    sub_10011A030(v36, v37, v73);
    memcpy(&v74[6], v73, 0x802uLL);
  }

  v65 = 0;
  v38 = *(v6 + 96);
  if (v38 == 1)
  {
    BYTE2(v74[518]) = 0;
    v39 = v66;
  }

  else
  {
    v40 = *(v6 + 48);
    v41 = *(v6 + 56);
    v43 = *(v6 + 64);
    v42 = *(v6 + 72);
    v45 = *(v6 + 80);
    v44 = *(v6 + 88);
    BYTE2(v74[518]) = v40 + 1;
    v75[0] = v41;
    v75[1] = v43;
    v62 = v42;
    v63 = v44;
    sub_10011A208(v40, v41, v43, v42, v45, v44, v38);
    sub_10000AB0C(v41, v43);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v75[0], v75[1]);
    if (v45 >> 60 == 15)
    {
      sub_10011A270(v40, v41, v43, v62, v45, v63, v38);
    }

    else
    {
      v61 = v40;
      v46 = v62;
      v75[0] = v62;
      v75[1] = v45;
      sub_10000AB0C(v62, v45);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v61, v41, v43, v46, v45, v63, v38);
      sub_1000124C8(v75[0], v75[1]);
    }

    v47 = *(v6 + 165);
    v48 = v47 != 2 && (v47 & 1) != 0;
    v39 = v66;
    LOBYTE(v74[538]) = v48;
  }

  Logger.init(subsystem:category:)();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v75);
    _os_log_impl(&_mh_execute_header, v49, v50, "nan_send: %s  APPLE80211_IOC_NAN_DP_REQ", v51, 0xCu);
    sub_100002A00(v52);
  }

  (*(v67 + 8))(v39, v68);
  memcpy(v75, v74, 0x86CuLL);
  type metadata accessor for apple80211_nan_dp_request(0);
  v54 = v53;
  v55 = *(v70 + 8);
  v56 = *(v69 + 16);
  v57 = v71;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(315, v75, v57, v54, v55, v56, AssociatedConformanceWitness);
}

uint64_t sub_1000FCC70()
{
  v142 = v1;
  v138 = v0;
  v2 = __chkstk_darwin();
  v140 = type metadata accessor for Logger();
  v132 = *(v140 - 8);
  v3 = *(v132 + 64);
  __chkstk_darwin();
  v139 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v126 - v5;
  v6 = type metadata accessor for DispatchTimeInterval();
  v134 = *(v6 - 8);
  v135 = v6;
  v7 = *(v134 + 64);
  __chkstk_darwin();
  v133 = (&v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for SHA256Digest();
  v9 = *(v141 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v145, 0x15C8uLL);
  HIBYTE(v145[851]) = *v2;
  v18 = *(v2 + 16);
  v137 = *(v2 + 8);
  *&v136 = v18;
  SHA256.init()();
  v19 = String.lowercased()();

  v20 = v142;
  sub_1001F93A4(v19._countAndFlagsBits, v19._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v12, v141);
  v21 = v146[0];
  v22 = v146[1];
  (*(v14 + 8))(v17, v13);
  v146[0] = v21;
  v146[1] = v22;
  v23 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v146[0], v146[1]);
  KeyPath = swift_getKeyPath();

  v25 = sub_1000AEE10(v137, v136, &v145[1] + 2, KeyPath, 0xFFuLL);

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v128 = v23;
  v26 = 254;
  if (v25 < 0xFE)
  {
    v26 = v25;
  }

  HIWORD(v145[65]) = v26;
  v27 = *(v2 + 48);
  v28 = *(v2 + 40);
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1001136FC(v145, v29, v30, v28, v27);

  v31 = *(v2 + 64);
  v32 = *(v2 + 56);
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_1001136FC(v145, v33, v34, v32, v31);

  v141 = v2;
  v35 = NANPublish.Configuration.serviceInfo.getter();
  v37 = v36;
  v39 = v38;
  v40 = sub_100033AA8(_swiftEmptyArrayStorage);
  v41 = type metadata accessor for BinaryEncoder();
  v42 = swift_allocObject();
  v136 = xmmword_100480A90;
  *(v42 + 16) = xmmword_100480A90;
  *(v42 + 32) = v40;
  v146[3] = v41;
  v130 = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v146[4] = v130;
  v146[0] = v42;

  NANServiceInfo.encode(to:)(v146, v35, v37, v39);
  v142 = v41;
  if (v20)
  {

    sub_1000124C8(v37, v39);

    sub_100002A00(v146);
    v129 = 0;
  }

  else
  {
    v129 = 0;
    sub_1000124C8(v37, v39);
    sub_100002A00(v146);
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 24);
    sub_10000AB0C(v43, v44);

    sub_10011A030(v43, v44, v143);
    memcpy(&v145[338], v143, 0x802uLL);
  }

  v45 = v141;
  LOBYTE(v145[873]) = v141[32];
  BYTE1(v145[851]) = v141[72] + 1;
  if (v141[73])
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  BYTE2(v145[851]) = v46;
  LOBYTE(v145[851]) = v141[75];
  v47 = type metadata accessor for NANPublish.Configuration();
  LOBYTE(v145[852]) = 0x1008040100uLL >> (8 * v45[v47[19]]);
  v48 = &v45[v47[18]];
  v49 = sub_100028EF8();
  v50 = v133;
  v51 = v134;
  *v133 = 0x80000;
  v52 = v135;
  (*(v51 + 104))(v50, enum case for DispatchTimeInterval.microseconds(_:), v135);
  v53 = sub_100028EF8();
  (*(v51 + 8))(v50, v52);
  if (!v53)
  {
    goto LABEL_80;
  }

  if (v49 == 0x8000000000000000 && v53 == -1)
  {
LABEL_83:
    __break(1u);
  }

  if (v49 / v53 < 0)
  {
    goto LABEL_81;
  }

  if ((v49 / v53) >> 32)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v145[854] = v49 / v53;
  v145[855] = -1;
  v145[856] = v45[74];
  if (v45[76] == 1)
  {
    v145[857] = 2;
    v54 = v142;
    v56 = v129;
    v55 = v130;
    if ((v45[v47[20]] & 1) == 0)
    {
      goto LABEL_21;
    }

    v57 = 50;
  }

  else
  {
    v145[857] = 0;
    v54 = v142;
    v56 = v129;
    v55 = v130;
    if (v45[v47[20]] != 1)
    {
      goto LABEL_21;
    }

    v57 = 48;
  }

  v145[857] = v57;
LABEL_21:
  v58 = &v45[v47[21]];
  v59 = *(v58 + 2);
  if (v59[2])
  {
    v60 = 68;
  }

  else
  {
    v60 = 4;
  }

  v61 = v60 | 0x200;
  v62 = v45[v47[34]];
  v63 = v60 | 0x600;
  if ((v62 & 1) == 0)
  {
    v63 = v61;
  }

  if (v62 == 2)
  {
    v63 = v61;
  }

  v64 = v45[77];
  if (v64)
  {
    v65 = 3;
  }

  else
  {
    v65 = 1;
  }

  if (v64 == 2)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  LOWORD(v145[858]) = v63 | v66;
  v67 = *(v45 + 44);
  v145[1388] = *(v45 + 21);
  LOWORD(v145[1389]) = v67;
  v68 = v58[2];
  v137 = v47;
  v135 = v59;
  if (!v68)
  {
    goto LABEL_37;
  }

  if (v68 == 1)
  {
    v68 = 5;
LABEL_37:
    v145[872] = v68;
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = v69 & 1;
    goto LABEL_39;
  }

  v145[872] = 5;

  v70 = 1;
LABEL_39:
  LOBYTE(v145[871]) = v70;
  v71 = NANGenericServiceProtocol.packetData(for:)(3, *(v58 + 1));
  if (v72 >> 60 == 15)
  {
    v73 = 0;
  }

  else
  {
    v73 = v71;
  }

  if (v72 >> 60 == 15)
  {
    v74 = 0xC000000000000000;
  }

  else
  {
    v74 = v72;
  }

  v75 = sub_100033AA8(_swiftEmptyArrayStorage);
  v76 = swift_allocObject();
  *(v76 + 16) = v136;
  *(v76 + 32) = v75;
  v146[3] = v54;
  v146[4] = v55;
  v146[0] = v76;

  NANServiceInfo.encode(to:)(v146, 2, v73, v74);
  if (v56)
  {

    sub_1000124C8(v73, v74);

    sub_100002A00(v146);
  }

  else
  {
    sub_1000124C8(v73, v74);
    sub_100002A00(v146);
    swift_beginAccess();
    v77 = *(v76 + 16);
    v78 = *(v76 + 24);
    sub_10000AB0C(v77, v78);

    sub_10011A030(v77, v78, v144);
    memcpy(&v145[875] + 2, v144, 0x802uLL);
  }

  v142 = 0;
  if (v135[2])
  {
    v79 = v135[5];
    v80 = v135[6];
    v81 = v135[7];
    v82 = v135[8];
    v83 = v135[10];
    BYTE2(v145[859]) = *(v135 + 32) + 1;
    v146[0] = v79;
    v146[1] = v80;
    sub_10000AB0C(v79, v80);
    sub_10005D67C(v81, v82);

    sub_10000AB0C(v79, v80);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v146[0], v146[1]);
    if (v82 >> 60 == 15)
    {
      sub_1000124C8(v79, v80);
      sub_100017554(v81, v82);
    }

    else
    {
      v146[0] = v81;
      v146[1] = v82;
      sub_10000AB0C(v81, v82);
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v79, v80);
      sub_100017554(v81, v82);

      sub_1000124C8(v146[0], v146[1]);
    }
  }

  else
  {
    BYTE2(v145[859]) = 0;
  }

  v135 = &qword_1004B4E88[7];
  v84 = v131;
  Logger.init(subsystem:category:)();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v141;
  if (v87)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v146[0] = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v146);
    _os_log_impl(&_mh_execute_header, v85, v86, "nan_send: %s  APPLE80211_IOC_NAN_PUBLISH", v89, 0xCu);
    sub_100002A00(v90);
  }

  v91 = v132;
  v134 = *(v132 + 8);
  (v134)(v84, v140);
  v92 = v138;
  v93 = v139;
  v94 = v142;
  v95 = v137;
  v96 = &v88[v137[33]];
  if (v96[1] & 1) != 0 || (v88[v137[29]])
  {
    goto LABEL_57;
  }

  v127 = *v96;
  v146[0] = &_mh_execute_header;
  v103 = v138[5];
  v105 = v138[2];
  v104 = v138[3];

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v146, &v146[1], 0, v105, v104);
  if (v94)
  {
  }

  v132 = v105;
  v133 = v104;
  LODWORD(v131) = v127;
  LODWORD(v130) = v127 >> 8;

  v106 = 0;
  v128 = v91 + 8;
  v107 = 1;
  *&v108 = 136315394;
  v126 = v108;
  v129 = v103;
  while (1)
  {
    *&v136 = v106;
    v110 = swift_slowAlloc();
    *v110 = 0;
    v110[2] = 0;

    v111 = v133;

    AppleDevice.getRequest(requestType:data:on:)(0x33uLL, v110, (v110 + 3), 0, v132, v111);

    if (v94)
    {
    }

    v142 = 0;
    v112 = *v110;
    v113 = v110[1];

    if (v112 == v131 && v113 == v130)
    {
      break;
    }

    Logger.init(subsystem:category:)();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v117 = v126;
      v118 = CountryCode.description.getter(v127);
      v120 = sub_100002320(v118, v119, v146);

      *(v117 + 4) = v120;
      *(v117 + 12) = 2080;
      v121 = CountryCode.description.getter(v112 | (v113 << 8));
      v123 = sub_100002320(v121, v122, v146);

      *(v117 + 14) = v123;
      v93 = v139;
      _os_log_impl(&_mh_execute_header, v115, v116, "counntry code mismatch: configured %s current %s", v117, 0x16u);
      swift_arrayDestroy();

      v88 = v141;
    }

    (v134)(v93, v140);
    v94 = v142;
    v109 = v136;
    sleep(2u);
    v107 = v109 < 2;
    v106 = v109 + 1;
    if (v109 == 2)
    {
      goto LABEL_76;
    }
  }

  v94 = v142;
LABEL_76:
  v146[0] = 0;

  v124 = v133;

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v146, &v146[1], 0, v132, v124);

  if (!v94)
  {
    v95 = v137;
    v92 = v138;
    if (!v107)
    {
      sub_10000B02C();
      swift_allocError();
      *v125 = xmmword_100481800;
      *(v125 + 16) = 1;
      return swift_willThrow();
    }

LABEL_57:
    if ((v88[*(v95 + 116)] & 1) != 0 || (v97 = *&v88[*(v95 + 128)] | (*&v88[*(v95 + 128) + 4] << 32), (v97 & 0xFF00000000) == 0x300000000) || (result = sub_1000F6D28(v97), !v94))
    {
      memcpy(v146, v145, sizeof(v146));
      v99 = v92;
      v100 = v92[5];
      v101 = v99[2];
      v102 = v99[3];

      AppleDevice.setRequest(requestType:data:on:)(0x12CuLL, v146, &v147, 0, v101, v102);
    }
  }

  return result;
}

uint64_t sub_1000FEEE4()
{
  v60 = v1;
  v63 = v0;
  v2 = __chkstk_darwin();
  v3 = type metadata accessor for Logger();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin();
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SHA256Digest();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v66, 0x86CuLL);
  LOBYTE(v66[0]) = *v2;
  BYTE2(v66[0]) = *(v2 + 24);
  v15 = *(v2 + 25);
  *(&v66[5] + 1) = *(v2 + 29);
  v16 = *(v2 + 3);
  *(&v66[2] + 3) = *(v2 + 1);
  *(&v66[3] + 1) = vzip1_s32(v16, v15);
  HIBYTE(v66[0]) = *(v2 + 7);
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  SHA256.init()();
  v19 = String.lowercased()();

  v20 = v60;
  sub_1001F93A4(v19._countAndFlagsBits, v19._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v60 = v20;
  (*(v6 + 8))(v9, v59);
  v21 = *v67;
  v22 = *&v67[8];
  (*(v11 + 8))(v14, v10);
  *v67 = v21;
  *&v67[8] = v22;
  v23 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(*v67, *&v67[8]);
  v24 = *(v2 + 32);
  v59 = v23;
  if (!v24)
  {
    goto LABEL_4;
  }

  if (v24 == 1)
  {
    v24 = 5;
LABEL_4:
    v25 = v64;
    v66[531] = v24;
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v26 & 1;
    goto LABEL_6;
  }

  v66[531] = 5;

  v27 = 1;
  v25 = v64;
LABEL_6:
  LOBYTE(v66[530]) = v27;
  v28 = NANGenericServiceProtocol.packetData(for:)(3, *(v2 + 40));
  if (v29 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 >> 60 == 15)
  {
    v31 = 0xC000000000000000;
  }

  else
  {
    v31 = v29;
  }

  v32 = sub_100033AA8(_swiftEmptyArrayStorage);
  v33 = type metadata accessor for BinaryEncoder();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100480A90;
  *(v34 + 32) = v32;
  *&v67[24] = v33;
  *&v67[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  *v67 = v34;

  v35 = v60;
  NANServiceInfo.encode(to:)(v67, 2, v30, v31);
  if (v35)
  {

    sub_1000124C8(v30, v31);

    sub_100002A00(v67);
  }

  else
  {
    sub_1000124C8(v30, v31);
    sub_100002A00(v67);
    swift_beginAccess();
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    sub_10000AB0C(v36, v37);

    sub_10011A030(v36, v37, v65);
    memcpy(&v66[6], v65, 0x802uLL);
  }

  v38 = *(v2 + 96);
  if (v38 == 1)
  {
    BYTE2(v66[518]) = 0;
  }

  else
  {
    v60 = 0;
    v39 = *(v2 + 48);
    v40 = *(v2 + 56);
    v42 = *(v2 + 64);
    v41 = *(v2 + 72);
    v44 = *(v2 + 80);
    v43 = *(v2 + 88);
    BYTE2(v66[518]) = v39 + 1;
    *v67 = v40;
    *&v67[8] = v42;
    v57 = v41;
    v58 = v43;
    sub_10011A208(v39, v40, v42, v41, v44, v43, v38);
    sub_10000AB0C(v40, v42);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*v67, *&v67[8]);
    if (v44 >> 60 == 15)
    {
      sub_10011A270(v39, v40, v42, v57, v44, v58, v38);
    }

    else
    {
      v56 = v39;
      v45 = v57;
      *v67 = v57;
      *&v67[8] = v44;
      sub_10000AB0C(v57, v44);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v56, v40, v42, v45, v44, v58, v38);
      sub_1000124C8(*v67, *&v67[8]);
    }

    v46 = *(v2 + 165);
    v25 = v64;
    v47 = v46 != 2 && (v46 & 1) != 0;
    LOBYTE(v66[538]) = v47;
  }

  Logger.init(subsystem:category:)();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v67 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v67);
    _os_log_impl(&_mh_execute_header, v48, v49, "nan_send: %s  APPLE80211_IOC_NAN_DP_REQ", v50, 0xCu);
    sub_100002A00(v51);
  }

  (*(v61 + 8))(v25, v62);
  memcpy(v67, v66, sizeof(v67));
  v52 = v63[5];
  v53 = v63[2];
  v54 = v63[3];

  AppleDevice.setRequest(requestType:data:on:)(0x13BuLL, v67, &v68, 0, v53, v54);
}

uint64_t BroadcomDriver<>.update(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 200))(a1, a2, a4);
}

{
  return (*(a4 + 208))(a1, a2, a4);
}

{
  return (*(a4 + 216))(a1, a2, a4);
}

uint64_t sub_100100018(int a1, uint64_t a2)
{
  v4 = v2;
  LODWORD(v6) = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v25, 0, 7);
  v23 = 0;
  v24 = 0;
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    HIDWORD(v21) = v6;
    v6 = v16;
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B92F0, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DP_END", v15, 0xCu);
    sub_100002A00(v6);
    LOBYTE(v6) = BYTE4(v21);
  }

  (*(v8 + 8))(v11, v7);
  LOBYTE(v26) = v6;
  *(&v26 + 1) = v25[0];
  HIDWORD(v26) = *(v25 + 3);
  v27 = a2;
  v28 = BYTE2(a2);
  v29 = BYTE3(a2);
  v30 = BYTE4(a2);
  v31 = BYTE5(a2);
  v32 = v23;
  v33 = v24;
  v17 = v4[5];
  v18 = v4[2];
  v19 = v4[3];

  AppleDevice.setRequest(requestType:data:on:)(0x13EuLL, &v26, &v34, 0, v18, v19);
}

uint64_t IO80211Driver<>.terminate(datapathID:initiatorAddress:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a4;
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v41, 0, 7);
  v39 = 0;
  v40 = 0;
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    v31 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000027, 0x80000001004B92F0, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_DP_END", v16, 0xCu);
    sub_100002A00(v18);
    a3 = v26;
  }

  (*(v9 + 8))(v12, v8);
  LOBYTE(v31) = v28;
  *(&v31 + 1) = v41[0];
  HIDWORD(v31) = *(v41 + 3);
  v32 = a2;
  v33 = BYTE2(a2);
  v34 = BYTE3(a2);
  v35 = BYTE4(a2);
  v36 = BYTE5(a2);
  v37 = v39;
  v38 = v40;
  type metadata accessor for apple80211_nan_dp_terminate(0);
  v20 = v19;
  v21 = *(v30 + 8);
  v22 = *(v29 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(318, &v31, a3, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_1001005E4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B9320, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_SUBSCRIBE", v12, 0xCu);
    sub_100002A00(v13);

    LOBYTE(a1) = v19;
  }

  (*(v5 + 8))(v8, v4);
  LOBYTE(v20) = a1;
  v14 = v2[5];
  v15 = v2[2];
  v16 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(0x132uLL, &v20, &v20 + 1, 0, v15, v16);
}

uint64_t IO80211Driver<>.terminate(subscribeID:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[1] = v5;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B9320, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_SUBSCRIBE", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  v29 = v28;
  type metadata accessor for apple80211_nan_cancel_subscribe_data(0);
  v20 = v19;
  v21 = *(v26 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(306, &v29, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_100100AF4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9340, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_PUBLISH", v12, 0xCu);
    sub_100002A00(v13);

    LOBYTE(a1) = v19;
  }

  (*(v5 + 8))(v8, v4);
  LOBYTE(v20) = a1;
  v14 = v2[5];
  v15 = v2[2];
  v16 = v2[3];

  AppleDevice.setRequest(requestType:data:on:)(0x12DuLL, &v20, &v20 + 1, 0, v15, v16);
}

uint64_t IO80211Driver<>.terminate(publishID:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v28 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25[1] = v5;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9340, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_CANCEL_PUBLISH", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v25[0];
  }

  (*(v9 + 8))(v12, v8);
  v29 = v28;
  type metadata accessor for apple80211_nan_cancel_publish_data(0);
  v20 = v19;
  v21 = *(v26 + 8);
  v22 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(301, &v29, a2, v20, v21, v22, AssociatedConformanceWitness);
}

uint64_t sub_100101008()
{
  v1 = __chkstk_darwin();
  v60 = v2;
  v59 = v0;
  v57 = v3;
  v58 = v4;
  v6 = v5;
  v55 = v7;
  v56 = v8;
  v10 = v9;
  v54 = v1;
  v11 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v51 = &v48 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v48 - v17;
  v48 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v21 = os_log_type_enabled(v19, v20);
  v52 = v14;
  v53 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v6;
    v24 = v10;
    v25 = swift_slowAlloc();
    v67 = v25;
    *v22 = 136315138;
    *(v22 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v67);
    _os_log_impl(&_mh_execute_header, v19, v20, "nan_send: %s __LINE__ APPLE80211_IOC_NAN_FOLLOW_UP_TRANSMIT", v22, 0xCu);
    sub_100002A00(v25);
    v10 = v24;
    v6 = v23;
    v13 = v53;

    v49 = *(v52 + 8);
  }

  else
  {

    v49 = *(v14 + 8);
  }

  v49(v18, v13);
  memset(v66, 0, sizeof(v66));
  v26 = type metadata accessor for NANIdentityKey(0);
  v27 = *(*(v26 - 8) + 48);
  v28 = v60;
  if (v27(v60, 1, v26) == 1)
  {
LABEL_9:
    v41 = v54;
    sub_10000AB0C(v54, v10);
    sub_10011A030(v41, v10, v63);
    v43 = v55;
    v42 = v56;
    sub_10000AB0C(v55, v56);
    sub_10011A4D0(v43, v42, v62);
    swift_beginAccess();
    memcpy(&v65[2], v66, 0x110uLL);
    LOBYTE(v67) = v57;
    BYTE1(v67) = v58;
    WORD1(v67) = 0;
    WORD2(v67) = v6;
    BYTE6(v67) = BYTE2(v6);
    HIBYTE(v67) = BYTE3(v6);
    v68[0] = BYTE4(v6);
    v68[1] = BYTE5(v6);
    memcpy(&v68[2], v63, 0x802uLL);
    memcpy(v69, v62, sizeof(v69));
    memcpy(v70, v65, sizeof(v70));
    v44 = v59[5];
    v45 = v59[2];
    v46 = v59[3];

    AppleDevice.setRequest(requestType:data:on:)(0x133uLL, &v67, v71, 0, v45, v46);
  }

  v66[0] = 1;
  v29 = v51;
  sub_100012400(v28, v51, &unk_100595C50, &unk_1004AFD20);
  if (v27(v29, 1, v26) != 1)
  {
    v30 = v61;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v61 = v30;
    v31 = v67;
    v32 = *v68;
    sub_10003B8D4(v29, type metadata accessor for NANIdentityKey);
    sub_10011A2D8(v31, v32, 0, v64);
    memcpy(&v66[1], v64, 0x102uLL);
    v33 = v50;
    Logger.init(subsystem:category:)();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      LODWORD(v60) = v64[257];
      v36 = v6;
      v37 = v10;
      v38 = v64[0];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67 = v40;
      *v39 = 136315650;
      *(v39 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v67);
      *(v39 + 12) = 256;
      *(v39 + 14) = v38;
      v10 = v37;
      v6 = v36;
      *(v39 + 15) = 256;
      *(v39 + 17) = v60;
      _os_log_impl(&_mh_execute_header, v34, v35, "send: %s skda_info: nik: length: %hhu cipher_version: %hhu", v39, 0x12u);
      sub_100002A00(v40);
    }

    v49(v33, v53);
    goto LABEL_9;
  }

  result = sub_100016290(v29, &unk_100595C50, &unk_1004AFD20);
  __break(1u);
  return result;
}

uint64_t IO80211Driver<>.transmit(followUp:with:for:to:with:nik:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v12 = __chkstk_darwin();
  v76 = v11;
  v77 = v13;
  v73 = v14;
  v74 = v15;
  v75 = v16;
  v71 = v17;
  v72 = v18;
  v69 = v12;
  v70 = v19;
  v20 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v22 = v66 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v68 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = v66 - v27;
  v66[1] = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = os_log_type_enabled(v29, v30);
  v67 = v23;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = v24;
    v34 = v23;
    v35 = swift_slowAlloc();
    v78 = v35;
    *v32 = 136315138;
    *(v32 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v78);
    _os_log_impl(&_mh_execute_header, v29, v30, "nan_send: %s __LINE__ APPLE80211_IOC_NAN_FOLLOW_UP_TRANSMIT", v32, 0xCu);
    sub_100002A00(v35);

    v36 = *(v33 + 8);
    v36(v28, v34);
  }

  else
  {

    v36 = *(v24 + 8);
    v36(v28, v23);
  }

  memset(v85, 0, sizeof(v85));
  v37 = type metadata accessor for NANIdentityKey(0);
  v38 = *(*(v37 - 8) + 48);
  v39 = v77;
  if (v38(v77, 1, v37) == 1)
  {
LABEL_10:
    v77 = a11;
    v51 = v75;
    v67 = v75 >> 40;
    v52 = HIDWORD(v75);
    v68 = a10;
    v53 = v75 >> 24;
    v54 = v75 >> 16;
    v55 = v75 >> 8;
    v57 = v69;
    v56 = v70;
    sub_10000AB0C(v69, v70);
    sub_10011A030(v57, v56, v84);
    v59 = v71;
    v58 = v72;
    sub_10000AB0C(v71, v72);
    sub_10011A4D0(v59, v58, v83);
    swift_beginAccess();
    memcpy(&v82[2], v85, 0x110uLL);
    LOBYTE(v78) = v73;
    BYTE1(v78) = v74;
    WORD1(v78) = 0;
    BYTE4(v78) = v51;
    BYTE5(v78) = v55;
    BYTE6(v78) = v54;
    HIBYTE(v78) = v53;
    v79[0] = v52;
    v79[1] = v67;
    memcpy(&v79[2], v84, 0x802uLL);
    memcpy(v80, v83, sizeof(v80));
    memcpy(v81, v82, sizeof(v81));
    type metadata accessor for apple80211_nan_follow_up_transmit_data(0);
    v61 = v60;
    v62 = *(v68 + 1);
    v63 = *(v77 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(307, &v78, a9, v61, v62, v63, AssociatedConformanceWitness);
  }

  v85[0] = 1;
  sub_100012400(v39, v22, &unk_100595C50, &unk_1004AFD20);
  if (v38(v22, 1, v37) != 1)
  {
    v40 = v87;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v87 = v40;
    v41 = v78;
    v42 = *v79;
    sub_10003B8D4(v22, type metadata accessor for NANIdentityKey);
    sub_10011A2D8(v41, v42, 0, v86);
    memcpy(&v85[1], v86, 0x102uLL);
    v43 = v68;
    Logger.init(subsystem:category:)();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v86[257];
      v47 = v86[0];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v78 = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_100002320(0xD000000000000028, 0x80000001004B9360, &v78);
      *(v48 + 12) = 256;
      *(v48 + 14) = v47;
      *(v48 + 15) = 256;
      *(v48 + 17) = v46;
      _os_log_impl(&_mh_execute_header, v44, v45, "send: %s skda_info: nik: length: %hhu cipher_version: %hhu", v48, 0x12u);
      sub_100002A00(v49);

      v50 = v68;
    }

    else
    {

      v50 = v43;
    }

    v36(v50, v67);
    goto LABEL_10;
  }

  result = sub_100016290(v22, &unk_100595C50, &unk_1004AFD20);
  __break(1u);
  return result;
}

uint64_t sub_100101DF0(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v108 = a8;
  v106 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v107 = a1;
  v113 = a2 >> 8;
  v115 = a2 >> 16;
  v117 = (a2 >> 24);
  v119 = HIDWORD(a2);
  v121 = a2 >> 40;
  v13 = a3 >> 8;
  v14 = a3 >> 16;
  v15 = a3 >> 24;
  v110 = HIDWORD(a3);
  v111 = a3 >> 40;
  v112 = a4 >> 8;
  v114 = a4 >> 16;
  v116 = a4 >> 24;
  v118 = HIDWORD(a4);
  v120 = a4 >> 40;
  v16 = type metadata accessor for Logger();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  __chkstk_darwin();
  v101 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v99 - v19;
  __chkstk_darwin();
  v102 = &v99 - v20;
  bzero(v122, 0x3E9uLL);
  LOBYTE(v122[1]) = v11;
  BYTE1(v122[1]) = v13;
  BYTE2(v122[1]) = v14;
  BYTE3(v122[1]) = v15;
  BYTE4(v122[1]) = v110;
  BYTE5(v122[1]) = v111;
  BYTE6(v122[1]) = v12;
  HIBYTE(v122[1]) = v113;
  LOBYTE(v122[2]) = v115;
  BYTE1(v122[2]) = v117;
  BYTE2(v122[2]) = v119;
  BYTE3(v122[2]) = v121;
  BYTE4(v122[2]) = v10;
  BYTE5(v122[2]) = v112;
  BYTE6(v122[2]) = v114;
  HIBYTE(v122[2]) = v116;
  LOBYTE(v122[3]) = v118;
  BYTE1(v122[3]) = v120;
  v120 = a7;
  v121 = a6;
  v21 = a7 - a6;
  if (a7 < a6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = _swiftEmptyArrayStorage;
  if (v21 >= 0x80)
  {
    v31 = v21 >> 7;
    *v123 = _swiftEmptyArrayStorage;
    sub_10002D838(0, v21 >> 7, 0);
    v22 = *v123;
    v32 = v121;
    v33 = v121 >> 7;
    v34 = v108;
    v35 = HIBYTE(v108);
    v36 = HIWORD(v108);
    v37 = v108 >> 40;
    v38 = HIDWORD(v108);
    v39 = v108 >> 24;
    v40 = *(*v123 + 16);
    v41 = v108 >> 16;
    v42 = v108 >> 8;
    while (1)
    {
      v125[0] = v34;
      v125[1] = v42;
      v125[2] = v41;
      v125[3] = v39;
      v125[4] = v38;
      v125[5] = v37;
      v125[6] = v36;
      v125[7] = v35;
      v43 = v125[v33];
      v44 = v22[3];
      *v123 = v22;
      if (v40 >= v44 >> 1)
      {
        v118 = v36;
        v119 = v35;
        v116 = v38;
        v117 = v37;
        v114 = v41;
        v115 = v39;
        sub_10002D838((v44 > 1), v40 + 1, 1);
        v41 = v114;
        v39 = v115;
        v38 = v116;
        v37 = v117;
        v36 = v118;
        v35 = v119;
        v34 = v108;
        v22 = *v123;
      }

      v22[2] = v40 + 1;
      *(v22 + v40 + 32) = v43;
      if (v32 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v32 += 128;
      ++v33;
      ++v40;
      if (!--v31)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_3:
  v23 = sub_10002D874(v22);
  v25 = v24;

  v26 = v109;
  v27 = sub_1002AB53C(v23, v25);
  if (v26)
  {
    v28 = v23;
    v29 = v25;
    return sub_1000124C8(v28, v29);
  }

  v45 = v27;
  sub_1000124C8(v23, v25);
  v122[0] = v45;
  BYTE2(v122[3]) = v106;
  *(&v122[3] + 3) = 3000;
  v46 = *(v107 + 1);
  v118 = *(v107 + 2);
  v119 = v46;
  v47 = v107[32];
  if (v47 == 1)
  {
    v53 = *v107;
    *(&v122[3] + 5) = 1;
    v54 = v107[24];
    sub_10011A69C(v107, v123);
    v55 = sub_100033AA8(_swiftEmptyArrayStorage);
    v56 = type metadata accessor for BinaryEncoder();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100480A90;
    *(v57 + 32) = v55;
    *&v123[24] = v56;
    *&v123[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *v123 = v57;

    IEEE80211Frame.Management.Authentication.encode(to:)(v123, v53, v119, v118, v54);
    sub_100002A00(v123);
    swift_beginAccess();
    v69 = *(v57 + 16);
    v68 = *(v57 + 24);
    sub_10000AB0C(v69, v68);

    v117 = &qword_1004B4E88[7];
    v70 = v100;
    Logger.init(subsystem:category:)();
    sub_10000AB0C(v69, v68);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    v119 = v69;
    sub_1000124C8(v69, v68);
    v73 = os_log_type_enabled(v71, v72);
    v118 = v68;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v123 = v75;
      *v74 = 136315138;
      v76 = Data.hexString.getter(v119, v68);
      v78 = v72;
      v79 = sub_100002320(v76, v77, v123);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v71, v78, "Auth: %s", v74, 0xCu);
      sub_100002A00(v75);
    }

    v80 = *(v104 + 8);
    v80(v70, v105);
    v81 = v101;
    Logger.init(subsystem:category:)();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v117 = v80;
      v85 = v84;
      *v123 = swift_slowAlloc();
      *v85 = 136315394;
      *(v85 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v123);
      *(v85 + 12) = 2080;
      v86 = TimeBitmap.description.getter(v121, v120, v108);
      v88 = sub_100002320(v86, v87, v123);

      *(v85 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "nan_send: %s  AUTH APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v85, 0x16u);
      swift_arrayDestroy();

      sub_10011A6F8(v107);

      v117(v101, v105);
    }

    else
    {
      sub_10011A6F8(v107);

      v80(v81, v105);
    }

    v59 = v118;
LABEL_26:
    v89 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v89 == 2)
      {
        v90 = *(v119 + 16);
        v92 = *(v119 + 24);
        if (__OFSUB__(v92, v90))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v92 - v90 >= 960)
        {
          v91 = 960;
        }

        else
        {
          v91 = v92 - v90;
        }
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v90 = 0;
      }
    }

    else if (v89)
    {
      v93 = HIDWORD(v119) - v119;
      if (__OFSUB__(HIDWORD(v119), v119))
      {
        goto LABEL_50;
      }

      if (v93 >= 960)
      {
        v93 = 960;
      }

      v91 = v93;
      v90 = v119;
      v92 = v119 >> 32;
    }

    else
    {
      v90 = 0;
      v91 = BYTE6(v59);
      v92 = BYTE6(v59);
    }

    if (v92 >= v90 && v91 >= v90)
    {
      *v123 = Data._Representation.subscript.getter();
      *&v123[8] = v94;
      sub_1000BA0A4();
      v95 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(*v123, *&v123[8]);
      if ((v95 & 0x8000000000000000) == 0)
      {
        if (!(v95 >> 16))
        {
          *(&v122[4] + 7) = v95;
          memcpy(v123, v122, sizeof(v123));
          v96 = v103[5];
          v97 = v103[2];
          v98 = v103[3];

          AppleDevice.setRequest(requestType:data:on:)(0x16EuLL, v123, v124, 0, v97, v98);

          v28 = v119;
          v29 = v59;
          return sub_1000124C8(v28, v29);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v47 == 2)
  {
    v48 = *(v107 + 3);
    *(&v122[3] + 5) = 0;
    v49 = *v107;
    *(&v122[4] + 1) = v49 == 4;
    v50 = sub_100033AA8(_swiftEmptyArrayStorage);
    v51 = type metadata accessor for BinaryEncoder();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100480A90;
    *(v52 + 32) = v50;
    *&v123[24] = v51;
    *&v123[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *v123 = v52;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v123, v49, v119);
    sub_100002A00(v123);
    swift_beginAccess();
    v59 = *(v52 + 24);
    v119 = *(v52 + 16);
    sub_10000AB0C(v119, v59);

    v60 = v102;
    Logger.init(subsystem:category:)();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v118 = v59;
      *v123 = v64;
      *v63 = 136315394;
      *(v63 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v123);
      *(v63 + 12) = 2080;
      v65 = TimeBitmap.description.getter(v121, v120, v108);
      v67 = sub_100002320(v65, v66, v123);

      *(v63 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "nan_send: %s  ACTION APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v63, 0x16u);
      swift_arrayDestroy();
      v59 = v118;

      (*(v104 + 8))(v102, v105);
    }

    else
    {

      (*(v104 + 8))(v60, v105);
    }

    goto LABEL_26;
  }

  sub_10000B02C();
  swift_allocError();
  *v58 = xmmword_1004817E0;
  *(v58 + 16) = 0;
  return swift_willThrow();
}

uint64_t IO80211Driver<>.transmit(outOfBoundFrame:from:to:on:mapID:using:)(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111 = a8;
  v109 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v110 = a1;
  v116 = a2 >> 8;
  v118 = a2 >> 16;
  v120 = (a2 >> 24);
  v122 = HIDWORD(a2);
  v124 = a2 >> 40;
  v16 = a3 >> 8;
  v17 = a3 >> 16;
  v18 = a3 >> 24;
  v113 = HIDWORD(a3);
  v114 = a3 >> 40;
  v115 = a4 >> 8;
  v117 = a4 >> 16;
  v119 = a4 >> 24;
  v121 = HIDWORD(a4);
  v123 = a4 >> 40;
  v19 = type metadata accessor for Logger();
  v107 = *(v19 - 8);
  v108 = v19;
  v20 = *(v107 + 64);
  __chkstk_darwin();
  v105 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v103 - v22;
  __chkstk_darwin();
  v106 = &v103 - v23;
  bzero(v125, 0x3E9uLL);
  LOBYTE(v125[1]) = v14;
  BYTE1(v125[1]) = v16;
  BYTE2(v125[1]) = v17;
  BYTE3(v125[1]) = v18;
  BYTE4(v125[1]) = v113;
  BYTE5(v125[1]) = v114;
  BYTE6(v125[1]) = v15;
  HIBYTE(v125[1]) = v116;
  LOBYTE(v125[2]) = v118;
  BYTE1(v125[2]) = v120;
  BYTE2(v125[2]) = v122;
  BYTE3(v125[2]) = v124;
  BYTE4(v125[2]) = v13;
  BYTE5(v125[2]) = v115;
  BYTE6(v125[2]) = v117;
  HIBYTE(v125[2]) = v119;
  LOBYTE(v125[3]) = v121;
  BYTE1(v125[3]) = v123;
  v123 = a7;
  v124 = a6;
  v24 = a7 - a6;
  if (a7 < a6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v25 = _swiftEmptyArrayStorage;
  if (v24 >= 0x80)
  {
    v32 = v24 >> 7;
    v126[0] = _swiftEmptyArrayStorage;
    sub_10002D838(0, v24 >> 7, 0);
    v25 = v126[0];
    v33 = v124;
    v34 = v124 >> 7;
    v35 = v111;
    v36 = HIBYTE(v111);
    v37 = HIWORD(v111);
    v38 = v111 >> 40;
    v39 = HIDWORD(v111);
    v40 = v111 >> 24;
    v41 = *(v126[0] + 16);
    v42 = v111 >> 16;
    v43 = v111 >> 8;
    while (1)
    {
      v127[0] = v35;
      v127[1] = v43;
      v127[2] = v42;
      v127[3] = v40;
      v127[4] = v39;
      v127[5] = v38;
      v127[6] = v37;
      v127[7] = v36;
      v44 = v127[v34];
      v45 = v25[3];
      v126[0] = v25;
      if (v41 >= v45 >> 1)
      {
        v121 = v37;
        v122 = v36;
        v119 = v39;
        v120 = v38;
        v117 = v42;
        v118 = v40;
        sub_10002D838((v45 > 1), v41 + 1, 1);
        v42 = v117;
        v40 = v118;
        v39 = v119;
        v38 = v120;
        v37 = v121;
        v36 = v122;
        v35 = v111;
        v25 = v126[0];
      }

      v25[2] = v41 + 1;
      *(v25 + v41 + 32) = v44;
      if (v33 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v33 += 128;
      ++v34;
      ++v41;
      if (!--v32)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_3:
  v26 = sub_10002D874(v25);
  v28 = v27;

  v29 = v112;
  v30 = sub_1002AB53C(v26, v28);
  result = sub_1000124C8(v26, v28);
  if (!v29)
  {
    v125[0] = v30;
    BYTE2(v125[3]) = v109;
    *(&v125[3] + 3) = 3000;
    v46 = v110;
    v47 = *(v110 + 1);
    v121 = *(v110 + 2);
    v122 = v47;
    v48 = v110[32];
    if (v48 == 1)
    {
      v54 = *v110;
      *(&v125[3] + 5) = 1;
      v55 = v110[24];
      sub_10011A69C(v110, v126);
      v56 = sub_100033AA8(_swiftEmptyArrayStorage);
      v57 = type metadata accessor for BinaryEncoder();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100480A90;
      *(v58 + 32) = v56;
      v126[3] = v57;
      v126[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v126[0] = v58;

      IEEE80211Frame.Management.Authentication.encode(to:)(v126, v54, v122, v121, v55);
      sub_100002A00(v126);
      swift_beginAccess();
      v68 = *(v58 + 16);
      v69 = *(v58 + 24);
      sub_10000AB0C(v68, v69);

      v120 = &qword_1004B4E88[7];
      v70 = v104;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v68, v69);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      sub_1000124C8(v68, v69);
      v73 = os_log_type_enabled(v71, v72);
      v121 = v68;
      v122 = v69;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        LODWORD(v119) = v72;
        v76 = v75;
        v126[0] = v75;
        *v74 = 136315138;
        v77 = Data.hexString.getter(v68, v69);
        v79 = v70;
        v80 = sub_100002320(v77, v78, v126);

        *(v74 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v71, v119, "Auth: %s", v74, 0xCu);
        sub_100002A00(v76);

        v81 = *(v107 + 8);
        v81(v79, v108);
      }

      else
      {

        v81 = *(v107 + 8);
        v81(v70, v108);
      }

      v82 = v105;
      Logger.init(subsystem:category:)();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v126[0] = swift_slowAlloc();
        *v85 = 136315394;
        *(v85 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v126);
        *(v85 + 12) = 2080;
        v86 = TimeBitmap.description.getter(v124, v123, v111);
        v88 = sub_100002320(v86, v87, v126);

        *(v85 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v83, v84, "nan_send: %s  AUTH APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v85, 0x16u);
        swift_arrayDestroy();

        sub_10011A6F8(v110);

        v89 = v105;
      }

      else
      {
        sub_10011A6F8(v46);

        v89 = v82;
      }

      v81(v89, v108);
      v60 = v121;
    }

    else
    {
      if (v48 != 2)
      {
        sub_10000B02C();
        swift_allocError();
        *v59 = xmmword_1004817E0;
        *(v59 + 16) = 0;
        return swift_willThrow();
      }

      v49 = *(v110 + 3);
      *(&v125[3] + 5) = 0;
      v50 = *v110;
      *(&v125[4] + 1) = v50 == 4;
      v51 = sub_100033AA8(_swiftEmptyArrayStorage);
      v52 = type metadata accessor for BinaryEncoder();
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100480A90;
      *(v53 + 32) = v51;
      v126[3] = v52;
      v126[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v126[0] = v53;

      IEEE80211Frame.Management.ActionFrame.encode(to:)(v126, v50, v122);
      sub_100002A00(v126);
      swift_beginAccess();
      v60 = *(v53 + 16);
      v122 = *(v53 + 24);
      sub_10000AB0C(v60, v122);

      v61 = v106;
      Logger.init(subsystem:category:)();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v126[0] = swift_slowAlloc();
        *v64 = 136315394;
        *(v64 + 4) = sub_100002320(0xD000000000000031, 0x80000001004B9390, v126);
        *(v64 + 12) = 2080;
        v65 = TimeBitmap.description.getter(v124, v123, v111);
        v67 = sub_100002320(v65, v66, v126);

        *(v64 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v62, v63, "nan_send: %s  ACTION APPLE80211_IOC_NAN_OOB_AF_TX (Slots: %s)", v64, 0x16u);
        swift_arrayDestroy();

        (*(v107 + 8))(v106, v108);
      }

      else
      {

        (*(v107 + 8))(v61, v108);
      }
    }

    v90 = v122;
    v91 = v122 >> 62;
    if ((v122 >> 62) > 1)
    {
      if (v91 == 2)
      {
        v92 = *(v60 + 16);
        v94 = *(v60 + 24);
        if (__OFSUB__(v94, v92))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v94 - v92 >= 960)
        {
          v93 = 960;
        }

        else
        {
          v93 = v94 - v92;
        }
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v92 = 0;
      }
    }

    else if (v91)
    {
      v95 = HIDWORD(v60) - v60;
      if (__OFSUB__(HIDWORD(v60), v60))
      {
        goto LABEL_50;
      }

      if (v95 >= 960)
      {
        v95 = 960;
      }

      v93 = v95;
      v92 = v60;
      v94 = v60 >> 32;
    }

    else
    {
      v92 = 0;
      v93 = BYTE6(v122);
      v94 = BYTE6(v122);
    }

    if (v94 >= v92 && v93 >= v92)
    {
      v126[0] = Data._Representation.subscript.getter();
      v126[1] = v96;
      sub_1000BA0A4();
      v97 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(v126[0], v126[1]);
      if ((v97 & 0x8000000000000000) == 0)
      {
        if (!(v97 >> 16))
        {
          *(&v125[4] + 7) = v97;
          memcpy(v126, v125, 0x3E9uLL);
          type metadata accessor for apple80211_nan_oob_act_frm_data(0);
          v99 = v98;
          v100 = *(a10 + 8);
          v101 = *(a11 + 16);
          swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_100110D80(366, v126, a9, v99, v100, v101, AssociatedConformanceWitness);
          return sub_1000124C8(v60, v90);
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_100103658()
{
  v40 = v1;
  v44 = v0;
  v2 = __chkstk_darwin();
  v3 = type metadata accessor for Logger();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin();
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SHA256Digest();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v45 + 4, 0x87CuLL);
  LOBYTE(v45[0]) = *v2;
  BYTE1(v45[0]) = *(v2 + 74);
  WORD1(v45[0]) = *(v2 + 1);
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  SHA256.init()();
  v17 = String.lowercased()();

  v18 = v40;
  sub_1001F93A4(v17._countAndFlagsBits, v17._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v40 = v18;
  (*(v6 + 8))(v9, v39);
  v19 = v46[0];
  v20 = v46[1];
  (*(v11 + 8))(v14, v10);
  v46[0] = v19;
  v46[1] = v20;
  v39 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v46[0], v46[1]);
  v21 = *(v2 + 8);
  v22 = *(v2 + 50);
  WORD2(v21) = *(v2 + 12);
  WORD3(v21) = *(v2 + 2);
  DWORD2(v21) = *(v2 + 4);
  HIDWORD(v21) = *(v2 + 46);
  *(&v45[1] + 2) = v21;
  WORD1(v45[3]) = v22;
  HIDWORD(v45[262]) = 0;
  LOWORD(v45[263]) = 0;
  LODWORD(v45[265]) = 0;
  v45[261] = 0;
  LOBYTE(v45[262]) = 0;
  *(&v45[263] + 4) = 0;
  BYTE4(v45[264]) = 0;
  bzero(&v45[3] + 4, 0x80AuLL);
  v23 = *(v2 + 128);
  if (v23 == 1)
  {
    BYTE4(v45[265]) = 0;
  }

  else
  {
    v24 = *(v2 + 80);
    v25 = *(v2 + 88);
    v26 = *(v2 + 96);
    v27 = *(v2 + 104);
    v28 = *(v2 + 112);
    v29 = *(v2 + 120);
    BYTE4(v45[265]) = v24 + 1;
    v46[0] = v25;
    v46[1] = v26;
    sub_10011A208(v24, v25, v26, v27, v28, v29, v23);
    sub_10000AB0C(v25, v26);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v46[0], v46[1]);
    if (v28 >> 60 == 15)
    {
      sub_10011A270(v24, v25, v26, v27, v28, v29, v23);
    }

    else
    {
      v46[0] = v27;
      v46[1] = v28;
      sub_10000AB0C(v27, v28);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v24, v25, v26, v27, v28, v29, v23);
      sub_1000124C8(v46[0], v46[1]);
    }
  }

  v30 = v41;
  Logger.init(subsystem:category:)();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B93D0, v46);
    _os_log_impl(&_mh_execute_header, v31, v32, "nan_send: %s  APPLE80211_IOC_NAN_DP_RESP", v33, 0xCu);
    sub_100002A00(v34);
  }

  (*(v42 + 8))(v30, v43);
  memcpy(v46, v45, sizeof(v46));
  v35 = v44[5];
  v36 = v44[2];
  v37 = v44[3];

  AppleDevice.setRequest(requestType:data:on:)(0x13CuLL, v46, &v47, 0, v36, v37);
}

uint64_t IO80211Driver<>.send(datapathResponse:)()
{
  v2 = __chkstk_darwin();
  v52 = v3;
  v53 = v0;
  v50 = v5;
  v51 = v4;
  v6 = v2;
  v7 = type metadata accessor for Logger();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SHA256Digest();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SHA256();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v54 + 4, 0x87CuLL);
  LOBYTE(v54[0]) = *v6;
  BYTE1(v54[0]) = *(v6 + 74);
  WORD1(v54[0]) = *(v6 + 1);
  v18 = *(v6 + 56);
  v19 = *(v6 + 64);
  SHA256.init()();
  v20 = String.lowercased()();

  sub_1001F93A4(v20._countAndFlagsBits, v20._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v46 = v1;
  (*(v10 + 8))(v13, v45);
  v21 = v55[0];
  v22 = v55[1];
  (*(v14 + 8))(v17, v44);
  v55[0] = v21;
  v55[1] = v22;
  v45 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v55[0], v55[1]);
  v23 = *(v6 + 8);
  v24 = *(v6 + 50);
  WORD2(v23) = *(v6 + 12);
  WORD3(v23) = *(v6 + 2);
  DWORD2(v23) = *(v6 + 4);
  HIDWORD(v23) = *(v6 + 46);
  *(&v54[1] + 2) = v23;
  WORD1(v54[3]) = v24;
  HIDWORD(v54[262]) = 0;
  LOWORD(v54[263]) = 0;
  LODWORD(v54[265]) = 0;
  v54[261] = 0;
  LOBYTE(v54[262]) = 0;
  *(&v54[263] + 4) = 0;
  BYTE4(v54[264]) = 0;
  bzero(&v54[3] + 4, 0x80AuLL);
  v25 = *(v6 + 128);
  if (v25 == 1)
  {
    BYTE4(v54[265]) = 0;
  }

  else
  {
    v27 = *(v6 + 80);
    v26 = *(v6 + 88);
    v29 = *(v6 + 96);
    v28 = *(v6 + 104);
    v31 = *(v6 + 112);
    v30 = *(v6 + 120);
    BYTE4(v54[265]) = v27 + 1;
    v55[0] = v26;
    v55[1] = v29;
    sub_10011A208(v27, v26, v29, v28, v31, v30, v25);
    sub_10000AB0C(v26, v29);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v55[0], v55[1]);
    if (v31 >> 60 == 15)
    {
      sub_10011A270(v27, v26, v29, v28, v31, v30, v25);
    }

    else
    {
      v55[0] = v28;
      v55[1] = v31;
      sub_10000AB0C(v28, v31);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v27, v26, v29, v28, v31, v30, v25);
      sub_1000124C8(v55[0], v55[1]);
    }
  }

  v32 = v47;
  Logger.init(subsystem:category:)();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B93D0, v55);
    _os_log_impl(&_mh_execute_header, v33, v34, "nan_send: %s  APPLE80211_IOC_NAN_DP_RESP", v35, 0xCu);
    sub_100002A00(v36);
  }

  (*(v48 + 8))(v32, v49);
  memcpy(v55, v54, sizeof(v55));
  type metadata accessor for apple80211_nan_dp_response(0);
  v38 = v37;
  v39 = *(v51 + 8);
  v40 = *(v50 + 16);
  v41 = v52;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(316, v55, v41, v38, v39, v40, AssociatedConformanceWitness);
}

uint64_t sub_100104304(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B93F0, &v20);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s  APPLE80211_IOC_NAN_DP_CONF", v13, 0xCu);
    sub_100002A00(v14);
  }

  (*(v6 + 8))(v9, v5);
  LOBYTE(v20) = a1;
  BYTE1(v20) = HIBYTE(a1);
  BYTE2(v20) = BYTE1(a1);
  BYTE3(v20) = BYTE2(a1);
  BYTE4(v20) = BYTE3(a1);
  BYTE5(v20) = BYTE4(a1);
  BYTE6(v20) = BYTE5(a1);
  HIBYTE(v20) = BYTE6(a1);
  v15 = v3[5];
  v16 = v3[2];
  v17 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(0x13FuLL, &v20, &v21, 0, v16, v17);
}

uint64_t IO80211Driver<>.send(datapathConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26[1] = v5;
    v18 = v17;
    v29 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B93F0, &v29);
    _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  APPLE80211_IOC_NAN_DP_CONF", v16, 0xCu);
    sub_100002A00(v18);

    a4 = v26[0];
  }

  (*(v9 + 8))(v12, v8);
  LOBYTE(v29) = a1;
  BYTE1(v29) = HIBYTE(a1);
  BYTE2(v29) = BYTE1(a1);
  BYTE3(v29) = BYTE2(a1);
  BYTE4(v29) = BYTE3(a1);
  BYTE5(v29) = BYTE4(a1);
  BYTE6(v29) = BYTE5(a1);
  HIBYTE(v29) = BYTE6(a1);
  type metadata accessor for apple80211_nan_dp_confirm(0);
  v20 = v19;
  v21 = v28;
  v22 = *(v27 + 8);
  v23 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(319, &v29, v21, v20, v22, v23, AssociatedConformanceWitness);
}

uint64_t sub_100104878(uint64_t a1, int a2, unint64_t a3)
{
  LODWORD(v31) = a2;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = type metadata accessor for Logger();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin();
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v34[7], 0, 237);
  v34[0] = a3;
  v34[1] = v4;
  v34[2] = v5;
  v34[3] = v6;
  v34[4] = v7;
  v34[5] = v8;
  v12 = v31 + 1;
  v34[6] = v31 + 1;
  v13 = v32;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v14 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v35[0], *(&v35[0] + 1));
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v14 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v32) = v12;
  v34[7] = v14;
  v15 = v33;
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = v18;
    *&v35[0] = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_100002320(0xD000000000000030, 0x80000001004B9410, v35);
    *(v19 + 12) = 256;
    *(v19 + 14) = v14;
    *(v19 + 15) = 256;
    *(v19 + 17) = v32;
    *(v19 + 18) = 2080;
    v20 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v22 = sub_100002320(v20, v21, v35);

    *(v19 + 20) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_TK with length: %hhu cipher_version: %hhu for %s", v19, 0x1Cu);
    swift_arrayDestroy();

    (*(v28 + 8))(v33, v29);
  }

  else
  {

    (*(v28 + 8))(v15, v29);
  }

  swift_beginAccess();
  v35[12] = *&v34[192];
  v35[13] = *&v34[208];
  v35[14] = *&v34[224];
  v36 = *&v34[240];
  v35[8] = *&v34[128];
  v35[9] = *&v34[144];
  v35[10] = *&v34[160];
  v35[11] = *&v34[176];
  v35[4] = *&v34[64];
  v35[5] = *&v34[80];
  v35[6] = *&v34[96];
  v35[7] = *&v34[112];
  v35[0] = *v34;
  v35[1] = *&v34[16];
  v35[2] = *&v34[32];
  v35[3] = *&v34[48];
  v23 = v30[5];
  v24 = v30[2];
  v25 = v30[3];

  AppleDevice.setRequest(requestType:data:on:)(0x22FuLL, v35, &v37, 0, v24, v25);
}

uint64_t IO80211Driver<>.addPairingKey(managementTransientKey:using:for:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v35 = a6;
  v36 = a5;
  LODWORD(v38) = a2;
  v7 = a3 >> 8;
  v8 = a3 >> 16;
  v9 = a3 >> 24;
  v10 = HIDWORD(a3);
  v11 = a3 >> 40;
  v12 = type metadata accessor for Logger();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  __chkstk_darwin();
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v41[7], 0, 237);
  v41[0] = a3;
  v41[1] = v7;
  v41[2] = v8;
  v41[3] = v9;
  v41[4] = v10;
  v41[5] = v11;
  v15 = v38 + 1;
  v41[6] = v38 + 1;
  v16 = v39;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.bitCount.getter();
  sub_1000BA0A4();
  v17 = DataProtocol.copyBytes(to:count:)();
  sub_1000124C8(*&v42[0], *(&v42[0] + 1));
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (v17 > 0xFF)
  {
    goto LABEL_8;
  }

  LODWORD(v39) = v15;
  v41[7] = v17;
  v18 = v40;
  Logger.init(subsystem:category:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v16;
    v22 = v21;
    *&v42[0] = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100002320(0xD000000000000030, 0x80000001004B9410, v42);
    *(v22 + 12) = 256;
    *(v22 + 14) = v17;
    *(v22 + 15) = 256;
    *(v22 + 17) = v39;
    *(v22 + 18) = 2080;
    v23 = WiFiAddress.description.getter(a3 & 0xFFFFFFFFFFFFLL);
    v25 = sub_100002320(v23, v24, v42);

    *(v22 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "nan_send: %s add APPLE80211_IOC_NAN_PAIRING_KEYS: NM_TK with length: %hhu cipher_version: %hhu for %s", v22, 0x1Cu);
    swift_arrayDestroy();

    (*(v33 + 8))(v40, v34);
  }

  else
  {

    (*(v33 + 8))(v18, v34);
  }

  swift_beginAccess();
  v42[12] = *&v41[192];
  v42[13] = *&v41[208];
  v42[14] = *&v41[224];
  v43 = *&v41[240];
  v42[8] = *&v41[128];
  v42[9] = *&v41[144];
  v42[10] = *&v41[160];
  v42[11] = *&v41[176];
  v42[4] = *&v41[64];
  v42[5] = *&v41[80];
  v42[6] = *&v41[96];
  v42[7] = *&v41[112];
  v42[0] = *v41;
  v42[1] = *&v41[16];
  v42[2] = *&v41[32];
  v42[3] = *&v41[48];
  type metadata accessor for apple80211_nan_encryption_keys(0);
  v27 = v26;
  v28 = *(v36 + 8);
  v29 = *(v35 + 16);
  v30 = v37;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(559, v42, v30, v27, v28, v29, AssociatedConformanceWitness);
}