---@meta _

MAX_BAD_USER_RECORDS_LIST_COUNT = 150      -- api/X2Trial
MAX_BAD_USER_RECORDS_PAGE_COUNT = 5        -- api/X2Trial
MAX_BAD_USER_RECORD_PER_PAGE_COUNT = 30    -- api/X2Trial
MAX_REPORT_BAD_USER_DESCRIPTION_SIZE = 100 -- api/X2Trial
SENTENCE_GUILTY_1 = 2                      -- api/X2Trial
SENTENCE_GUILTY_2 = 3                      -- api/X2Trial
SENTENCE_GUILTY_3 = 4                      -- api/X2Trial
SENTENCE_GUILTY_4 = 5                      -- api/X2Trial
SENTENCE_GUILTY_5 = 6                      -- api/X2Trial
SENTENCE_NOT_GUILTY = 1                    -- api/X2Trial
TRIAL_FINAL_STATEMENT = 4                  -- api/X2Trial
TRIAL_FREE = 0                             -- api/X2Trial
TRIAL_GUILTY_BY_SYSTEM = 6                 -- api/X2Trial
TRIAL_GUILTY_BY_USER = 7                   -- api/X2Trial
TRIAL_POST_SENTENCE = 8                    -- api/X2Trial
TRIAL_SENTENCE = 5                         -- api/X2Trial
TRIAL_TESTIMONY = 3                        -- api/X2Trial
TRIAL_WAITING_CRIME_RECORD = 1             -- api/X2Trial
TRIAL_WAITING_JURY = 2                     -- api/X2Trial
---@class X2Trial
X2Trial = {}                               -- api/X2Trial

---api/X2Trial
---@alias SENTENCE_TYPE
---| `SENTENCE_GUILTY_1`
---| `SENTENCE_GUILTY_2`
---| `SENTENCE_GUILTY_3`
---| `SENTENCE_GUILTY_4`
---| `SENTENCE_GUILTY_5`
---| `SENTENCE_NOT_GUILTY`

---api/X2Trial
---@alias TRIAL_STATE
---| `TRIAL_FINAL_STATEMENT`
---| `TRIAL_FREE`
---| `TRIAL_GUILTY_BY_SYSTEM`
---| `TRIAL_GUILTY_BY_USER`
---| `TRIAL_POST_SENTENCE`
---| `TRIAL_SENTENCE`
---| `TRIAL_TESTIMONY`
---| `TRIAL_WAITING_CRIME_RECORD`
---| `TRIAL_WAITING_JURY`

