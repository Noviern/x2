# X2InGameShop
## Globals
**BFR_AA_POINT**

`integer`

**BFR_BILL**

`integer`

**BFR_BM_MILEAGE**

`integer`

**BFR_CANNOT_USE_AACOIN_FOR_GIFT**

`integer`

**BFR_CASH**

`integer`

**BFR_COUNT_PER_ACCOUNT**

`integer`

**BFR_DELETED_CHARACTER**

`integer`

**BFR_EXPIRED_DATE**

`integer`

**BFR_FRIEND_NAME**

`integer`

**BFR_GOLD**

`integer`

**BFR_INVALID_ACCOUNT**

`integer`

**BFR_LIMITED_TOTAL_PRICE**

`integer`

**BFR_NONE**

`integer`

**BFR_NORMAL**

`integer`

**BFR_SAME_ACCOUNT**

`integer`

**BFR_SECOND_PASSWORD**

`integer`

**BFR_SOLD_OUT**

`integer`

**BFR_TRANSFER_CHARACTER**

`integer`

**BM_CART_ALL**

`integer`

**BM_SELECTED**

`integer`

**CFR_FULL**

`integer`

**CFR_NONE**

`integer`

**CFR_NORMAL**

`integer`

**CU_ALL**

`integer`

**CU_BUY**

`integer`

**CU_BUY_CART**

`integer`

**CU_BUY_PRESENT**

`integer`

**CU_NONE**

`integer`

**ICS_GRW_CHARGED_MAIL**

`integer`

**ICS_GRW_EXPRESSS_MAIL**

`integer`

**ICS_GRW_INVALID**

`integer`

**ICS_GRW_INVENTORY**

`integer`

**ISMI_ARCHE_PASS_COIN**

`integer`

**ISMI_DELPI**

`integer`

**ISMI_GARNET**

`integer`

**ISMI_KEY**

`integer`

**ISMI_LORDCOIN**

`integer`

**ISMI_LUCKYCOIN**

`integer`

**ISMI_NETCAFE**

`integer`

**ISMI_PALOS**

`integer`

**ISMI_SEASON_GARNET**

`integer`

**ISMI_STAR**

`integer`

**MAX_INGAME_SHOP_UPDATE**

`integer`

**MODE_SEARCH**

`integer`

**PRICE_TYPE_AA_BONUS_CASH**

`integer`

**PRICE_TYPE_AA_CASH**

`integer`

**PRICE_TYPE_AA_CASH_AND_BONUS_CASH**

`integer`

**PRICE_TYPE_AA_POINT**

`integer`

**PRICE_TYPE_BM_MILEAGE**

`integer`

**PRICE_TYPE_GOLD**

`integer`

**PRICE_TYPE_ITEM**

`integer`

**PRICE_TYPE_REAL_MONEY**

`integer`

**STOP_SALE_BY_COUNT**

`integer`

**STOP_SALE_BY_ENDDATE**

`integer`

**STOP_SALE_BY_LIMIT_OVER**

`integer`

**STOP_SALE_BY_STARTDATE**

`integer`

**STOP_SALE_NONE**

`integer`

**X2InGameShop**

`X2InGameShop`

## Aliases
**BUY_FAIL_REASON**

`BFR_AA_POINT`|`BFR_BILL`|`BFR_BM_MILEAGE`|`BFR_CANNOT_USE_AACOIN_FOR_GIFT`|`BFR_CASH`...(+13)

```lua
-- api/X2InGameShop
BUY_FAIL_REASON:
    | `BFR_AA_POINT`
    | `BFR_BILL`
    | `BFR_BM_MILEAGE`
    | `BFR_CANNOT_USE_AACOIN_FOR_GIFT`
    | `BFR_CASH`
    | `BFR_COUNT_PER_ACCOUNT`
    | `BFR_DELETED_CHARACTER`
    | `BFR_EXPIRED_DATE`
    | `BFR_FRIEND_NAME`
    | `BFR_GOLD`
    | `BFR_INVALID_ACCOUNT`
    | `BFR_LIMITED_TOTAL_PRICE`
    | `BFR_NONE`
    | `BFR_NORMAL`
    | `BFR_SAME_ACCOUNT`
    | `BFR_SECOND_PASSWORD`
    | `BFR_SOLD_OUT`
    | `BFR_TRANSFER_CHARACTER`
```

**BUY_MODE**

`BM_CART_ALL`|`BM_SELECTED`

```lua
-- api/X2InGameShop
BUY_MODE:
    | `BM_CART_ALL`
    | `BM_SELECTED`
```

**CART_FAIL_REASON**

`CFR_FULL`|`CFR_NONE`|`CFR_NORMAL`

```lua
-- api/X2InGameShop
CART_FAIL_REASON:
    | `CFR_FULL`
    | `CFR_NONE`
    | `CFR_NORMAL`
```

**COMMAND_UI**

`CU_ALL`|`CU_BUY_CART`|`CU_BUY_PRESENT`|`CU_BUY`|`CU_NONE`

```lua
-- api/X2InGameShop
COMMAND_UI:
    | `CU_ALL`
    | `CU_BUY`
    | `CU_BUY_CART`
    | `CU_BUY_PRESENT`
    | `CU_NONE`
```

**INGAME_CART_SHOW_GOODS_RECEIVED_WAY**

`ICS_GRW_CHARGED_MAIL`|`ICS_GRW_EXPRESSS_MAIL`|`ICS_GRW_INVALID`|`ICS_GRW_INVENTORY`

```lua
-- api/X2InGameShop
INGAME_CART_SHOW_GOODS_RECEIVED_WAY:
    | `ICS_GRW_CHARGED_MAIL`
    | `ICS_GRW_EXPRESSS_MAIL`
    | `ICS_GRW_INVALID`
    | `ICS_GRW_INVENTORY`
```

**INGAME_SHOP_MONEY_ICON**

`ISMI_ARCHE_PASS_COIN`|`ISMI_DELPI`|`ISMI_GARNET`|`ISMI_KEY`|`ISMI_LORDCOIN`...(+5)

```lua
-- api/X2InGameShop
INGAME_SHOP_MONEY_ICON:
    | `ISMI_ARCHE_PASS_COIN`
    | `ISMI_DELPI`
    | `ISMI_GARNET`
    | `ISMI_KEY`
    | `ISMI_LORDCOIN`
    | `ISMI_LUCKYCOIN`
    | `ISMI_NETCAFE`
    | `ISMI_PALOS`
    | `ISMI_SEASON_GARNET`
    | `ISMI_STAR`
```

**INGAME_SHOP_VIEW_MODE**

`1`|`MODE_SEARCH`

```lua
-- api/X2InGameShop
INGAME_SHOP_VIEW_MODE:
    | `1`
    | `MODE_SEARCH`
```

**PRICE_TYPE**

`PRICE_TYPE_AA_BONUS_CASH`|`PRICE_TYPE_AA_CASH_AND_BONUS_CASH`|`PRICE_TYPE_AA_CASH`|`PRICE_TYPE_AA_POINT`|`PRICE_TYPE_BM_MILEAGE`...(+3)

```lua
-- api/X2InGameShop
PRICE_TYPE:
    | `PRICE_TYPE_AA_BONUS_CASH`
    | `PRICE_TYPE_AA_CASH`
    | `PRICE_TYPE_AA_CASH_AND_BONUS_CASH`
    | `PRICE_TYPE_AA_POINT`
    | `PRICE_TYPE_BM_MILEAGE`
    | `PRICE_TYPE_GOLD`
    | `PRICE_TYPE_ITEM`
    | `PRICE_TYPE_REAL_MONEY`
```

**STOP_SALE**

`STOP_SALE_BY_COUNT`|`STOP_SALE_BY_ENDDATE`|`STOP_SALE_BY_LIMIT_OVER`|`STOP_SALE_BY_STARTDATE`|`STOP_SALE_NONE`

```lua
-- api/X2InGameShop
STOP_SALE:
    | `STOP_SALE_BY_COUNT`
    | `STOP_SALE_BY_ENDDATE`
    | `STOP_SALE_BY_LIMIT_OVER`
    | `STOP_SALE_BY_STARTDATE`
    | `STOP_SALE_NONE`
```

## Classes
### Class: X2InGameShop
