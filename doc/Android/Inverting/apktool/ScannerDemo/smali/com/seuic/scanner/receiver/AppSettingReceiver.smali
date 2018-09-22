.class public Lcom/seuic/scanner/receiver/AppSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppSettingReceiver.java"


# instance fields
.field private final TYPE_BARCODE_BROADCAST_ACTION:Ljava/lang/String;

.field private final TYPE_BARCODE_BROADCAST_KEY:Ljava/lang/String;

.field private final TYPE_BARCODE_SEND_MODE:Ljava/lang/String;

.field private final TYPE_BOOT_START:Ljava/lang/String;

.field private final TYPE_ENDCHAR_ON_EMU:Ljava/lang/String;

.field private final TYPE_END_CHAR:Ljava/lang/String;

.field private final TYPE_ENTER_EVENT:Ljava/lang/String;

.field private final TYPE_FILTER_INVISIBLE_CHARS:Ljava/lang/String;

.field private final TYPE_FILTER_PREFIX_SUFFIX_BLANK:Ljava/lang/String;

.field private final TYPE_INTERVAL:Ljava/lang/String;

.field private final TYPE_PLAYSOUND:Ljava/lang/String;

.field private final TYPE_PREFIX:Ljava/lang/String;

.field private final TYPE_SCAN_CONTINUE:Ljava/lang/String;

.field private final TYPE_SUFFIX:Ljava/lang/String;

.field private final TYPE_VIBERATE:Ljava/lang/String;

.field private mAppconfig:Lcom/seuic/scanner/util/Appconfig;

.field private mLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-string v0, "sound_play"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_PLAYSOUND:Ljava/lang/String;

    .line 20
    const-string v0, "viberate"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_VIBERATE:Ljava/lang/String;

    .line 21
    const-string v0, "boot_start"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_BOOT_START:Ljava/lang/String;

    .line 22
    const-string v0, "endchar"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_END_CHAR:Ljava/lang/String;

    .line 23
    const-string v0, "barcode_send_mode"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_BARCODE_SEND_MODE:Ljava/lang/String;

    .line 24
    const-string v0, "action_barcode_broadcast"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_BARCODE_BROADCAST_ACTION:Ljava/lang/String;

    .line 25
    const-string v0, "key_barcode_broadcast"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_BARCODE_BROADCAST_KEY:Ljava/lang/String;

    .line 26
    const-string v0, "scan_continue"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_SCAN_CONTINUE:Ljava/lang/String;

    .line 27
    const-string v0, "interval"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_INTERVAL:Ljava/lang/String;

    .line 28
    const-string v0, "prefix"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_PREFIX:Ljava/lang/String;

    .line 29
    const-string v0, "suffix"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_SUFFIX:Ljava/lang/String;

    .line 30
    const-string v0, "end_char_on_emu"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_ENDCHAR_ON_EMU:Ljava/lang/String;

    .line 31
    const-string v0, "end_event"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_ENTER_EVENT:Ljava/lang/String;

    .line 32
    const-string v0, "filter_invisible_chars"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_FILTER_INVISIBLE_CHARS:Ljava/lang/String;

    .line 33
    const-string v0, "filter_prefix_suffix_blank"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->TYPE_FILTER_PREFIX_SUFFIX_BLANK:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mLocker:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mLocker:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 42
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 45
    :cond_0
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "action":Ljava/lang/String;
    const-string v22, "com.android.scanner.service_settings"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 50
    const/4 v6, 0x0

    .line 52
    .local v6, "configChanged":Z
    const-string v22, "action_barcode_broadcast"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 53
    const-string v22, "action_barcode_broadcast"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "actionBarcode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getBcName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/seuic/scanner/util/Appconfig;->setBcName(Ljava/lang/String;)V

    .line 57
    const/4 v6, 0x1

    .line 61
    .end local v4    # "actionBarcode":Ljava/lang/String;
    :cond_2
    const-string v22, "key_barcode_broadcast"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 62
    const-string v22, "key_barcode_broadcast"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, "keyBarcode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getBcKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/seuic/scanner/util/Appconfig;->setBcKey(Ljava/lang/String;)V

    .line 66
    const/4 v6, 0x1

    .line 70
    .end local v13    # "keyBarcode":Ljava/lang/String;
    :cond_3
    const-string v22, "barcode_send_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 71
    const-string v22, "barcode_send_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 73
    .local v18, "sendType":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/seuic/scanner/util/Appconfig$SendMode;->valueOf(Ljava/lang/String;)Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v14

    .line 74
    .local v14, "mode":Lcom/seuic/scanner/util/Appconfig$SendMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v22

    move-object/from16 v0, v22

    if-eq v14, v0, :cond_4

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/seuic/scanner/util/Appconfig;->setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    const/4 v6, 0x1

    .line 83
    .end local v14    # "mode":Lcom/seuic/scanner/util/Appconfig$SendMode;
    .end local v18    # "sendType":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v22, "boot_start"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 84
    const-string v22, "boot_start"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/seuic/scanner/util/Appconfig;->isBootstart()Z

    move-result v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 86
    .local v5, "bootStart":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isBootstart()Z

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_5

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/seuic/scanner/util/Appconfig;->setBootstart(Z)V

    .line 88
    const/4 v6, 0x1

    .line 92
    .end local v5    # "bootStart":Z
    :cond_5
    const-string v22, "endchar"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 93
    const-string v22, "endchar"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "endChar":Ljava/lang/String;
    :try_start_2
    invoke-static {v9}, Lcom/seuic/scanner/util/Appconfig$EndChar;->valueOf(Ljava/lang/String;)Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v8

    .line 96
    .local v8, "ec":Lcom/seuic/scanner/util/Appconfig$EndChar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v22

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_6

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/seuic/scanner/util/Appconfig;->setEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    const/4 v6, 0x1

    .line 105
    .end local v8    # "ec":Lcom/seuic/scanner/util/Appconfig$EndChar;
    .end local v9    # "endChar":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v22, "sound_play"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 106
    const-string v22, "sound_play"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/seuic/scanner/util/Appconfig;->isPlaysound()Z

    move-result v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 108
    .local v15, "playSound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isPlaysound()Z

    move-result v22

    move/from16 v0, v22

    if-eq v15, v0, :cond_7

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/seuic/scanner/util/Appconfig;->setIsplaysound(Z)V

    .line 110
    const/4 v6, 0x1

    .line 114
    .end local v15    # "playSound":Z
    :cond_7
    const-string v22, "viberate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 115
    const-string v22, "viberate"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/seuic/scanner/util/Appconfig;->isViberate()Z

    move-result v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 117
    .local v21, "viberate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isViberate()Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setIsviberate(Z)V

    .line 119
    const/4 v6, 0x1

    .line 123
    .end local v21    # "viberate":Z
    :cond_8
    const-string v22, "scan_continue"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 124
    const-string v22, "scan_continue"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 126
    .local v17, "scanContinue":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 128
    if-nez v17, :cond_a

    .line 129
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 130
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 133
    :cond_9
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 134
    invoke-static/range {p1 .. p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    .line 137
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setIscontinue(Z)V

    .line 138
    const/4 v6, 0x1

    .line 142
    .end local v17    # "scanContinue":Z
    :cond_b
    const-string v22, "interval"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 143
    const-string v22, "interval"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 145
    .local v20, "timeInterval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setInterval(I)V

    .line 147
    const/4 v6, 0x1

    .line 151
    .end local v20    # "timeInterval":I
    :cond_c
    const-string v22, "prefix"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 152
    const-string v22, "prefix"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "preFix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getPrefix()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setPrefix(Ljava/lang/String;)V

    .line 155
    const/4 v6, 0x1

    .line 159
    .end local v16    # "preFix":Ljava/lang/String;
    :cond_d
    const-string v22, "suffix"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 160
    const-string v22, "suffix"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 161
    .local v19, "sufFix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->getSuffix()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setSuffix(Ljava/lang/String;)V

    .line 163
    const/4 v6, 0x1

    .line 167
    .end local v19    # "sufFix":Ljava/lang/String;
    :cond_e
    const-string v22, "end_char_on_emu"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 168
    const-string v22, "end_char_on_emu"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 169
    .local v9, "endChar":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu()Z

    move-result v22

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/seuic/scanner/util/Appconfig;->setEndCharOnEmu(Z)V

    .line 171
    const/4 v6, 0x1

    .line 175
    .end local v9    # "endChar":Z
    :cond_f
    const-string v22, "end_event"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 176
    const-string v22, "end_event"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 177
    .local v12, "isAddEnterEvent":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent()Z

    move-result v22

    move/from16 v0, v22

    if-eq v12, v0, :cond_10

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/seuic/scanner/util/Appconfig;->setAddEnterEvent(Z)V

    .line 179
    const/4 v6, 0x1

    .line 183
    .end local v12    # "isAddEnterEvent":Z
    :cond_10
    const-string v22, "filter_invisible_chars"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 184
    const-string v22, "filter_invisible_chars"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 185
    .local v10, "filterInvisibleChars":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isFilterInvisibleChars()Z

    move-result v22

    move/from16 v0, v22

    if-eq v10, v0, :cond_11

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/seuic/scanner/util/Appconfig;->setFilterInvisibleChars(Z)V

    .line 187
    const/4 v6, 0x1

    .line 191
    .end local v10    # "filterInvisibleChars":Z
    :cond_11
    const-string v22, "filter_prefix_suffix_blank"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 192
    const-string v22, "filter_prefix_suffix_blank"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 193
    .local v11, "filterPrefixSuffixBlank":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->isFilterPrefixSuffixBlank()Z

    move-result v22

    move/from16 v0, v22

    if-eq v11, v0, :cond_12

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/seuic/scanner/util/Appconfig;->setFilterPrefixSuffixBlank(Z)V

    .line 195
    const/4 v6, 0x1

    .line 199
    .end local v11    # "filterPrefixSuffixBlank":Z
    :cond_12
    if-eqz v6, :cond_13

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mLocker:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 201
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/receiver/AppSettingReceiver;->mAppconfig:Lcom/seuic/scanner/util/Appconfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 202
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .end local v6    # "configChanged":Z
    :cond_13
    return-void

    .line 45
    .end local v3    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v22

    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v22

    .line 78
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v6    # "configChanged":Z
    .restart local v18    # "sendType":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    const-string v22, "AppSettingReceiver"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v18    # "sendType":Ljava/lang/String;
    .local v9, "endChar":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 101
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v22, "AppSettingReceiver"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "endChar":Ljava/lang/String;
    :catchall_1
    move-exception v22

    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v22
.end method
