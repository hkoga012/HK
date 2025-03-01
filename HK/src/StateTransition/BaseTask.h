﻿/*!------------------------------------------------
@brief 状態遷移管理クラス
@note 状態クラスの登録、状態の遷移を行う
@author
-------------------------------------------------*/
#ifndef BASE_TASK_H
#define BASE_TASK_H
#include "State.h"
#include "EventControl.h"
#include "TimerControl.h"
#include "RingBuffer.h"

constexpr uint32_t TASK_LOG_COUNT = 10;	//!< ログ保持数

//!< デバッグ用ログデータクラス
class   Log {
public:
    uint32_t time;		    //!< 軌道からのシステム時間(msec)
    uint32_t StateId;		//!< 状態ID
    uint32_t PrevStateId;	//!< 前回状態ID
    uint32_t EventId;		//!< イベントID
    const uint8_t* pData;	//!< イベントデータ
    uint32_t DataLen;       //!< イベントデータ長
};

class BaseTask {
    
private:

    const uint32_t _maxState;       //!<状態の最大数
    const uint32_t _maxEvent;       //!<イベントの最大数
    const char** _ppStateString;    //!< 状態文字列配列 2次元配列
    const char** _ppEventString;    //!< イベント文字列配列 2次元配列
    uint32_t _stateIndex;           //!<状態の登録数
    State **_pStateList;            //!<状態リスト 1次元配列
    State *_pState;                 //!<現在の状態
    BaseTask * _myPtr;              //!< 自タスクポインタ
    uint32_t _nextStateId;          //!< 次へ遷移する状態IDを指定
    bool  _isFirstTimeUpdate;       //!< 初回更新処理実施フラグ

    EventControl           *_pEventControl;   //!< イベント制御クラスポインタ
    TimerControl<BaseTask> *_pTimerControl;   //!< タイマー制御クラスポインタ

    //////////////////////////////////////////////////////////
    //デバッグ用変数定義
    //////////////////////////////////////////////////////////

    RingBuffer<Log>* _pTaskLog;     //!< デバッグ用タスクログキュー ポインタの1次元配列
    Log _log;                       //!< デバッグ用ログバッファ
    uint64_t _executeTime;          //!< 累積実行時間（負荷状況確認用）

    //////////////////////////////////////////////////////////

    /*!------------------------------------------------
    @brief 指定IDの状態が登録されているかチェック
    -------------------------------------------------*/
    bool IsRegistered(uint32_t StateId);

    /*!------------------------------------------------
    @brief 指定の状態へ移行
    -------------------------------------------------*/
    void SetState(uint32_t StateId);

 public:

    /*!------------------------------------------------
    @brief コンストラクタ
    -------------------------------------------------*/
    //BaseTask() = default;
    explicit BaseTask(uint32_t MaxState, uint32_t MaxEvent, uint32_t MaxTimer, uint32_t SizeEventQue, const char* pStateString[], const char* pEventString[]);
    
    /*!------------------------------------------------
    @brief デストラクタ
    -------------------------------------------------*/
    virtual ~BaseTask() {}

    /*!------------------------------------------------
    @brief タスク名を返す
    @note　本メンバ関数を派生先でオーバーライドすること
    -------------------------------------------------*/
    virtual const char* GetTaskName() { return "(unknown)"; }

    /*!------------------------------------------------
    @brief ログ取得
    -------------------------------------------------*/
    Log GetLog(uint32_t Offset);

    /*!------------------------------------------------
    @brief ログ格納数取得
    -------------------------------------------------*/
    uint32_t GetLogCount(void);

    /*!------------------------------------------------
    @brief 指定状態取得
    -------------------------------------------------*/
    State* GetState(uint32_t StateId);
    State* GetState(void);
    
    /*!------------------------------------------------
    @brief 指定状態取得
    -------------------------------------------------*/
    BaseTask* GetTask(void);

    /*!------------------------------------------------
    @brief 次に遷移する状態IDを取得
    -------------------------------------------------*/
    uint32_t GetNextStateId(void);

    /*!------------------------------------------------
    @brief 次に遷移する状態IDをセット
    -------------------------------------------------*/
    void SetNextStateId(const uint32_t NextStateId);

    /*!------------------------------------------------
    @brief 現在の状態を更新
    -------------------------------------------------*/
    void Update(void);

    /*!------------------------------------------------
    @brief イベント送信
    -------------------------------------------------*/
    void SendEvent(const uint32_t EventId, const uint8_t* pData=NULL, uint32_t DataLen=0);

    /*!------------------------------------------------
    @brief タイマー登録
    -------------------------------------------------*/
    TYPE_ERROR RegisterTimer(const ENUM_TIMER_MODE TimerMode, const uint32_t EventId);
    
    /*!------------------------------------------------
    @brief タイマー開始
    -------------------------------------------------*/
    void StartTimer(const uint32_t EventId, const uint32_t Msec);

    /*!------------------------------------------------
    @brief タイマー強制停止
    -------------------------------------------------*/
    void StopTimer(const uint32_t EventId);

    /*!------------------------------------------------
    @brief タイマー停止中確認
    -------------------------------------------------*/
    bool IsStoppedTimer(const uint32_t EventId);

    /*!------------------------------------------------
    @brief タイマーカウント
    -------------------------------------------------*/
    void CountTimer(void);

    /*!------------------------------------------------
    @brief タイマーカウンタ値取得
    -------------------------------------------------*/
    uint32_t GetTimerTick(void);

    /*!------------------------------------------------
    @brief 状態IDに対応した状態文字列を返す
    -------------------------------------------------*/
    const char* GetStateString(uint32_t StateId);

    /*!------------------------------------------------
    @brief イベントIDに対応したイベント文字列を返す
    -------------------------------------------------*/
    const char* GetEventString(uint32_t EventId);

    /*!------------------------------------------------
    @brief イベントの最大数を返す
    -------------------------------------------------*/
    uint32_t GetEventMax(void);

    /*!------------------------------------------------
    @brief 状態の最大数を返す
    -------------------------------------------------*/
    uint32_t GetStateMax(void);

    /*!------------------------------------------------
    @brief 当該タスクの起動後からの総実行時間を秒で返す
    -------------------------------------------------*/
    uint32_t GetExecuteTimeSec(void) { return (uint32_t)(_executeTime/1000); }

    /*!------------------------------------------------
    @brief 時間経過を返す
    @note　　0: 未だ過ぎていない　1: 時間が経過
    -------------------------------------------------*/
    uint32_t IsTimerIsExpired(uint32_t startTime, uint32_t time);

    /*!------------------------------------------------
    @brief タスクの情報をデバッグ出力する
    @note　本メンバ関数を派生先でオーバーライドすること
    -------------------------------------------------*/
    virtual void PrintInfo(void (*funcPrint)(const char*)) { funcPrint("PrintInfo() is undefined.\r\n"); }

    /*!------------------------------------------------
    @brief イベントキューのオーバー検知
    @note　　true: オーバである　false: オーバでない
    -------------------------------------------------*/
    bool IsOver(uint32_t limit);

};
#endif

