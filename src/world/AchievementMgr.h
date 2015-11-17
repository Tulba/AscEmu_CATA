/*
 * AscEmu Framework based on ArcEmu MMORPG Server
 * Copyright (C) 2014-2015 AscEmu Team <http://www.ascemu.org>
 * Copyright (C) 2008-2012 ArcEmu Team <http://www.ArcEmu.org/>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _ACHIEVEMENTMGR_H
#define _ACHIEVEMENTMGR_H

class QueryBuffer;
struct AchievementEntry;
struct AchievementCriteriaEntry;

// Achievement Reward Types
/// Achievement has no reward
#define ACHIEVEMENT_REWARDTYPE_NONE 0
/// Achievement has an item reward
#define ACHIEVEMENT_REWARDTYPE_ITEM 1
/// Achievement has a title reward
#define ACHIEVEMENT_REWARDTYPE_TITLE 2
/// Achievement has a spell reward
#define ACHIEVEMENT_REWARDTYPE_SPELL 4

// Achievement Flags
/// (0) : No flags
#define ACHIEVEMENT_FLAG_NONE 0x0000
/// (1) : Counter flag; used for statistics
#define ACHIEVEMENT_FLAG_COUNTER 0x0001
/// (4) : Reach level? Currently unused in ArcEmu.
#define ACHIEVEMENT_FLAG_REACH_LEVEL 0x0004
/// (64) : Average? Currently unused in ArcEmu.
#define ACHIEVEMENT_FLAG_AVERAGE 0x0040
/// (256) : Realm First achievement
#define ACHIEVEMENT_FLAG_REALM_FIRST_REACH 0x0100
/// (512) : Realm First Kill; Currently only used in Realm First! Obsidian Slayer (456)
#define ACHIEVEMENT_FLAG_REALM_FIRST_KILL 0x0200

/// All criteria must be completed for the achievement to be complete.
#define ACHIEVEMENT_CRITERIA_COMPLETE_FLAG_ALL 2
/// Some of the criteria must be completed for the achievement to be complete.
#define ACHIEVEMENT_CRITERIA_COMPLETE_FLAG_SOME 4

/// You must not be in a group to complete the achievement.
#define ACHIEVEMENT_CRITERIA_GROUP_NOT_IN_GROUP 2

/// Alliance-only achievement
#define ACHIEVEMENT_FACTION_FLAG_ALLIANCE 0
/// Horde-only achievement
#define ACHIEVEMENT_FACTION_FLAG_HORDE 1



/**
    CriteriaProgress structure
*/
struct CriteriaProgress
{
    CriteriaProgress(uint32 iid, uint32 icounter, time_t tdate = time(NULL))
        :
        id(iid),
        counter(icounter),
        date(tdate)
    { }

    uint32 id;     ///< Criteria ID
    int32 counter; ///< Completed count: how many times the criteria has been completed
    time_t date;   ///< Date/time
};

struct AchievementReward
{
    uint32 gender;
    uint32 titel_A;
    uint32 titel_H;
    uint32 itemId;
    uint32 sender;
    std::string subject;
    std::string text;
};

typedef HM_NAMESPACE::hash_map<uint32, CriteriaProgress*> CriteriaProgressMap;
typedef HM_NAMESPACE::hash_map<uint32, time_t> CompletedAchievementMap;
typedef std::multimap<uint32, AchievementReward> AchievementRewardsMap;
typedef std::pair<AchievementRewardsMap::const_iterator, AchievementRewardsMap::const_iterator> AchievementRewardsMapBounds;
typedef std::set<uint32> AchievementSet;

class Player;
class WorldPacket;
class ObjectMgr;

/**
    Achievement completion state
*/
enum AchievementCompletionState
{
    ACHIEVEMENT_COMPLETED_NONE,                 ///< #0# Achievement is not completed
    ACHIEVEMENT_COMPLETED_COMPLETED_NOT_STORED, ///< #1# Achievement is completed, but not stored yet
    ACHIEVEMENT_COMPLETED_COMPLETED_STORED,     ///< #2# Achievement is completed and has been stored
};

/**
    Achievement criteria conditions
    Currently these are not being used at all.
*/
enum AchievementCriteriaCondition
{
    ACHIEVEMENT_CRITERIA_CONDITION_NONE      = 0,  ///< #0# No condition
    ACHIEVEMENT_CRITERIA_CONDITION_NO_DEATH  = 1,  ///< #1# Must not die?
    ACHIEVEMENT_CRITERIA_CONDITION_UNK1      = 2,  ///< #2# only used in "Complete a daily quest every day for five consecutive days"
    ACHIEVEMENT_CRITERIA_CONDITION_MAP       = 3,  ///< #3# requires you to be on specific map
    ACHIEVEMENT_CRITERIA_CONDITION_NO_LOOSE  = 4,  ///< #4# only used in "Win 10 arenas without losing"
    ACHIEVEMENT_CRITERIA_CONDITION_UNK2      = 9,  ///< #9# unk
    ACHIEVEMENT_CRITERIA_CONDITION_UNK3      = 13, ///< #13# unk
};

/**
AchievementMgr class
Achievement Working List:
- ACHIEVEMENT_CRITERIA_TYPE_REACH_LEVEL
- ACHIEVEMENT_CRITERIA_TYPE_LOOT_ITEM
- ACHIEVEMENT_CRITERIA_TYPE_OWN_ITEM
- ACHIEVEMENT_CRITERIA_TYPE_EXPLORE_AREA
- ACHIEVEMENT_CRITERIA_TYPE_LOOT_MONEY
- ACHIEVEMENT_CRITERIA_TYPE_COMPLETE_QUEST_COUNT
- ACHIEVEMENT_CRITERIA_TYPE_COMPLETE_QUESTS_IN_ZONE
- ACHIEVEMENT_CRITERIA_TYPE_COMPLETE_QUEST
- ACHIEVEMENT_CRITERIA_TYPE_QUEST_REWARD_GOLD
- ACHIEVEMENT_CRITERIA_TYPE_GAIN_REPUTATION
- ACHIEVEMENT_CRITERIA_TYPE_GAIN_EXALTED_REPUTATION
- ACHIEVEMENT_CRITERIA_TYPE_COMPLETE_ACHIEVEMENT
- ACHIEVEMENT_CRITERIA_TYPE_LEARN_SPELL
- ACHIEVEMENT_CRITERIA_TYPE_KILL_CREATURE
- ACHIEVEMENT_CRITERIA_TYPE_REACH_SKILL_LEVEL
- ACHIEVEMENT_CRITERIA_TYPE_LEARN_SKILL_LEVEL
- ACHIEVEMENT_CRITERIA_TYPE_EQUIP_ITEM
- ACHIEVEMENT_CRITERIA_TYPE_EQUIP_EPIC_ITEM
- ACHIEVEMENT_CRITERIA_TYPE_NUMBER_OF_MOUNTS
- ACHIEVEMENT_CRITERIA_TYPE_DO_EMOTE (partial)
- ACHIEVEMENT_CRITERIA_TYPE_KILLING_BLOW (some)
- ACHIEVEMENT_CRITERIA_TYPE_KILL_CREATURE (some)
- ACHIEVEMENT_CRITERIA_TYPE_KILL_CREATURE_TYPE
- ACHIEVEMENT_CRITERIA_TYPE_USE_ITEM
- ACHIEVEMENT_CRITERIA_TYPE_USE_GAMEOBJECT
- ACHIEVEMENT_CRITERIA_TYPE_BUY_BANK_SLOT
- ACHIEVEMENT_CRITERIA_TYPE_VISIT_BARBER_SHOP
- ACHIEVEMENT_CRITERIA_TYPE_GOLD_SPENT_AT_BARBER
- ACHIEVEMENT_CRITERIA_TYPE_FALL_WITHOUT_DYING
- ACHIEVEMENT_CRITERIA_TYPE_EARN_HONORABLE_KILL
- ACHIEVEMENT_CRITERIA_TYPE_HONORABLE_KILL_AT_AREA
- ACHIEVEMENT_CRITERIA_TYPE_KILLED_BY_PLAYER
- ACHIEVEMENT_CRITERIA_TYPE_KILLED_BY_CREATURE
- ACHIEVEMENT_CRITERIA_TYPE_HK_CLASS
- ACHIEVEMENT_CRITERIA_TYPE_HK_RACE
- ACHIEVEMENT_CRITERIA_TYPE_DEATH
- ACHIEVEMENT_CRITERIA_TYPE_DEATH_AT_MAP
- ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET
- ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET2
- Realm-First achievements (most)
- Reward Titles
- Reward Spells
- Reward Items (goes to inventory?)
\todo Several achievement types
\todo Time limits on achievements
\todo Special conditions for achievements (group size, nobody in raid die during fight, etc.)
*/
class SERVER_DECL AchievementMgr
{
    public:
        AchievementMgr(Player* pl);
        ~AchievementMgr();
        void LoadFromDB(QueryResult* achievementResult, QueryResult* criteriaResult);
        void SaveToDB(QueryBuffer* buf);
        void CheckAllAchievementCriteria();
        void SendAllAchievementData(Player* player);
        void UpdateAchievementCriteria(AchievementCriteriaTypes type, int32 miscvalue1, int32 miscvalue2, uint32 time);
        void UpdateAchievementCriteria(AchievementCriteriaTypes type);
        bool GMCompleteAchievement(WorldSession* gmSession, int32 achievementID);
        bool GMCompleteCriteria(WorldSession* gmSession, int32 criteriaID);
        void GMResetAchievement(int achievementID);
        void GMResetCriteria(int criteriaID);
        bool HasCompleted(uint32 achievementID);
        uint32 GetCompletedAchievementsCount() const;
        uint32 GetCriteriaProgressCount();
        time_t GetCompletedTime(AchievementEntry const* achievement);
        Player* GetPlayer() { return m_player; }

    private:
        void GiveAchievementReward(AchievementEntry const* entry);
        void SendAchievementEarned(AchievementEntry const* achievement);
        void SendCriteriaUpdate(CriteriaProgress* progress);
        void SetCriteriaProgress(AchievementCriteriaEntry const* entry, int32 newValue, bool relative = false);
        void UpdateCriteriaProgress(AchievementCriteriaEntry const* entry, int32 updateByValue);
        void CompletedCriteria(AchievementCriteriaEntry const* entry);
        void CompletedAchievement(AchievementEntry const* entry);
        bool IsCompletedCriteria(AchievementCriteriaEntry const* entry);
        AchievementCompletionState GetAchievementCompletionState(AchievementEntry const* entry);

        RWLock m_lock;
        Player* m_player;
        CriteriaProgressMap m_criteriaProgress;
        CompletedAchievementMap m_completedAchievements;
        bool isCharacterLoading;
};

/// \note Function declarations - related to achievements - not in AchievementMgr class - defined in AchievementMgr.cpp
uint32 GetAchievementIDFromLink(const char* achievementlink);
bool SendAchievementProgress(const CriteriaProgress* c);
bool SaveAchievementProgressToDB(const CriteriaProgress* c);


#endif

