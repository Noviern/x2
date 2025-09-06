---@meta _

ESFP_DONE = 1     -- api/X2SurveyForm ESFP
ESFP_EXPIERED = 2 -- api/X2SurveyForm ESFP
ESFP_INVALID = -1 -- api/X2SurveyForm ESFP
ESFP_NONE = 0     -- api/X2SurveyForm ESFP
ESFP_TODO = 3     -- api/X2SurveyForm ESFP
SFQK_CHECK = 2    -- api/X2SurveyForm SFQK
SFQK_INVALID = 0  -- api/X2SurveyForm SFQK
SFQK_RADIO = 1    -- api/X2SurveyForm SFQK
---@class X2SurveyForm
X2SurveyForm = {} -- api/X2SurveyForm

-- api/X2SurveyForm
---Enum Survey Form Period
---| `ESFP_DONE`
---| `ESFP_EXPIERED`
---| `ESFP_INVALID`
---| `ESFP_NONE`
---| `ESFP_TODO`

-- api/X2SurveyForm
---Survey Form Question Kind
---@alias SFQK
---| `SFQK_CHECK`
---| `SFQK_INVALID`
---| `SFQK_RADIO`
