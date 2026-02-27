# Tutorial
## Importing APIs and Objects
When developing an ArcheAge addon, you can import two main categories of functionality using the [ADDON](../docs/api/Addon.md#class-addon) API:

- **APIs** — via [ADDON:ImportAPI(API_ID)](../docs/api/Addon.md#method-importapi)
  These provide access to game data, utility functions, and methods to read or modify game state (e.g., [Inventory](../docs/api/X2Bag.md), [Chat](../docs/api/X2Chat.md), [Quests](../docs/api/X2Quest.md), etc.).

- **Objects** — via [ADDON:ImportObject(OBJECT_ID)](../docs/api/Addon.md#method-importobject)
  These bring in globals for **Widgets** and **Drawables**, which are the building blocks of custom user interfaces.

## Objects: Widgets vs Drawables
Imported objects fall into two distinct groups: **Widgets** and **Drawables**

### Widgets
Widgets are the interactive and structural UI elements you're probably most familiar with:

- [Window](../docs/objects/Window.md)
- [Button](../docs/objects/Button.md)
- [Textbox](../docs/objects/Textbox.md)
- etc.

#### Example Button Widget
```lua
ADDON:ImportObject(2) -- Button

local myBtn = UIParent:CreateWidget("button", "MyCustomButton", "UIParent")
myBtn:AddAnchor("CENTER", "UIParent", 0, 0)
myBtn:SetStyle("text_default")
myBtn:SetText("Click Me")
myBtn:Show(true)
```

![Example of a Button Widget](../img/button_example.png)

> If you have [apitypes.lua](https://github.com/Noviern/x2/blob/master/scripts/apitypes.lua) from the X2 repository in both your workspace and toc.g you can use the `OBJECT` and `API` globals.
> ```lua
> ADDON:ImportObject(OBJECT.Button)
> ```

### Drawables (Textures / Backgrounds)
Drawables are created from Widgets and represent texture-based graphical elements used throughout the UI. They are the foundation for almost every visual component — including:

- Button backgrounds and states (normal, hover, pressed, disabled)
- Window borders and title bars
- Progress bar fills and backgrounds
- Icons and item slots
- Status icons (buff/debuff frames)

Most drawables are defined by a **key name** (e.g., `btn_small_normal`, `common_x`, `common_bg`) that references an entry in a texture definition `.g` file.

These definitions are most commonly found in files such as:
- `ui\common\default.g`
- `ui\map\frame_map.g`
- etc.

> **Note:** To access or view these `ui` files on your system, you must first enable **UI customization** in the game:
> 
> 1. Go to **Options** > **Addons**
> 2. Check the box for **UI customization**
> 3. Restart the client
> 
> Once enabled, the `ui` images (including `.g` files) become accessible in your `C:\ArcheRage\Documents\Addon\ui` folder.

#### Example Texture Key From `ui\common\default.g`
```lua
common_bg
    coords ( 993, 65, 30, 10 )
    inset ( 14, 4, 15, 5 )
    colors
        bg_01 ( 217, 179, 104, 63 )
        bg_02 ( 219, 197, 166, 65 )
        bg_03 ( 217, 179, 104, 38 )
        auction_title ( 216, 196, 159, 255 )
        list_title ( 153, 111, 28, 127 )
        list_ov ( 217, 179, 104, 76 )
        list_dis ( 178, 178, 178, 76 )
        brown ( 217, 187, 161, 77 ) -- box_brown
        brown_2 ( 212, 192, 158, 128 ) -- type7_brown
        brown_3 ( 243, 232, 211, 255 )
        black ( 0, 0, 0, 153 )
        green ( 81, 215, 132, 76 )
        gray_20 ( 178, 178, 178, 51 )
        red ( 236, 0, 0, 170 )
        gray_60 ( 50, 50, 50, 150 )
        alpha40 ( 210, 190, 160, 102 )
        blue ( 98, 179, 217, 76 )
        soft_red ( 217, 112, 98, 76 )
        gray_30 ( 157, 157, 157, 76 )
        orange ( 255, 198, 0, 60 )
        default ( 219, 197, 166, 115 )
        middle_brown ( 175, 124, 51, 102 )
        grade_12 ( 174, 152, 254, 40 )
        grade_11 ( 201, 11, 11, 40 )
        grade_10 ( 191, 121, 0, 40 )
        grade_9 ( 143, 165, 202, 40 )
        grade_8 ( 207, 125, 93, 40 )
        grade_7 ( 249, 82, 82, 40 )
        grade_6 ( 225, 120, 83, 40 )
        grade_5 ( 215, 139, 6, 40 )
        grade_4 ( 203, 114, 216, 40 )
        grade_3 ( 85, 143, 215, 40 )
        grade_2 ( 119, 176, 100, 40 )
        grade_1 ( 255, 255, 255, 40 )
        evolving_1 ( 81, 215, 132, 51 )
        evolving_2 ( 81, 151, 215, 51 )
        evolving_3 ( 215, 81, 211, 51 )
        evolving_4 ( 215, 140, 81, 51 )
        evolving_5 ( 215, 81, 177, 51 )
    type ninepart
```

**Field breakdown:**
| Field    | Format                                 | Purpose                                                                          |
| -------- | -------------------------------------- | -------------------------------------------------------------------------------- |
| `coords` | `(x, y, w, h)`                         | Position and size of this texture region inside the source atlas image           |
| `inset`  | `(left, top, right, bottom)`           | Inner padding used for 9-slice scaling (protects corners from stretching)        |
| `extent` | `(w, h)`                               | Final intended display size after insets are applied                             |
| `colors` | Named color blocks with `(R, G, B, A)` | Named RGBA color tints (0–255). (e.g., `grade_1`, `evolving_3`, `auction_title`). |
| `type`   | `ninepart`, `threepart`                | Rendering method (`ninepart` = 9-slice scalable, `threepart` = 3-slice scalable) |

#### Example NinePart Drawable
```lua
ADDON:ImportObject(8) -- NinePartDrawable

-- create myBtn

local background = myBtn:CreateNinePartDrawable("ui/common/default.dds", "background")
background:SetTextureInfo("common_bg", "auction_title")
background:AddAnchor("TOP", myBtn, "BOTTOM", 0, 50)
background:SetExtent(300, 20)

```

![Example of a NinePart Drawable](https://i.imgur.com/T2pFCYI.png)

## Object Foundation
Both **Widgets** and **Drawables** are built on the same foundational classes in the ArcheAge UI system:

- **[Uibounds](../docs/types/Uibounds.md)**
  Provides methods to set and retrieve position (location/anchor points) and size (extent/width & height).

- **[Uiobject](../docs/types/Uiobject.md)**
  Keeps track of metadata related to the object.
  - Unique ID
  - Object type
  - Validity state (`IsValidUIObject()` / checks if the object still exists in the object pool and can be used)

**Example of shared usage:**

```lua
-- Works the same way on both a Button widget and a Texture drawable
local obj = ... -- could be a button or a drawable texture

obj:AddAnchor("CENTER", "UIParent", 0, 0)
obj:SetWidth(200)
obj:SetHeight(80)
obj:Show(true)

if obj:IsValidUIObject() then
    ADDON:ChatLog("Object is alive and has type:", obj:GetObjectType())
end
```

## Widget Actions
WIP