.class public Lcom/seuic/scanner/service/ScanService;
.super Landroid/app/Service;
.source "ScanService.java"

# interfaces
.implements Lcom/seuic/scanner/DecodeInfoCallBack;
.implements Lcom/seuic/scanner/StatusCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/service/ScanService$2;
    }
.end annotation


# static fields
.field private static instance:Lcom/seuic/scanner/service/ScanService;

.field private static scnManager:Lcom/seuic/scanner/util/ScannerManager;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final NOTIFYCATION_ID:I

.field private appconfig:Lcom/seuic/scanner/util/Appconfig;

.field private mAppSettingReceiver:Lcom/seuic/scanner/receiver/AppSettingReceiver;

.field private mParamSettingsReceiver:Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

.field private mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

.field private mScannerDataReceiver:Lcom/seuic/scanner/receiver/ScannerDataReceiver;

.field private mThread:Ljava/lang/Thread;

.field private runnable:Ljava/lang/Runnable;

.field private screenOnOffReceiver:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const-string v0, "ScanService"

    iput-object v0, p0, Lcom/seuic/scanner/service/ScanService;->LOG_TAG:Ljava/lang/String;

    .line 44
    const v0, 0x1335312

    iput v0, p0, Lcom/seuic/scanner/service/ScanService;->NOTIFYCATION_ID:I

    .line 183
    new-instance v0, Lcom/seuic/scanner/service/ScanService$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/service/ScanService$1;-><init>(Lcom/seuic/scanner/service/ScanService;)V

    iput-object v0, p0, Lcom/seuic/scanner/service/ScanService;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/seuic/scanner/service/ScanService;)Lcom/seuic/scanner/util/Appconfig;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/service/ScanService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    return-object v0
.end method

.method static synthetic access$100()Lcom/seuic/scanner/util/ScannerManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    return-object v0
.end method

.method private filterInvisibleChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "barcode"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "stb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 304
    .local v1, "index":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 306
    .local v0, "c":C
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_1

    .line 307
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    .end local p1    # "barcode":Ljava/lang/String;
    :goto_1
    return-object p1

    .restart local p1    # "barcode":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private getEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)Ljava/lang/String;
    .locals 2
    .param p1, "endChar"    # Lcom/seuic/scanner/util/Appconfig$EndChar;

    .prologue
    .line 288
    sget-object v0, Lcom/seuic/scanner/service/ScanService$2;->$SwitchMap$com$seuic$scanner$util$Appconfig$EndChar:[I

    invoke-virtual {p1}, Lcom/seuic/scanner/util/Appconfig$EndChar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 298
    const-string v0, ""

    :goto_0
    return-object v0

    .line 290
    :pswitch_0
    const-string v0, "\t"

    goto :goto_0

    .line 292
    :pswitch_1
    const-string v0, "\n"

    goto :goto_0

    .line 294
    :pswitch_2
    const-string v0, " "

    goto :goto_0

    .line 296
    :pswitch_3
    const-string v0, ""

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance()Lcom/seuic/scanner/service/ScanService;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->instance:Lcom/seuic/scanner/service/ScanService;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 140
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0, p0}, Lcom/seuic/scanner/util/ScannerManager;->setDecodeInfoCallBack(Lcom/seuic/scanner/DecodeInfoCallBack;)V

    .line 141
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0, p0}, Lcom/seuic/scanner/util/ScannerManager;->setStatusCallBack(Lcom/seuic/scanner/StatusCallBack;)V

    .line 142
    invoke-static {p0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 143
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mThread:Ljava/lang/Thread;

    .line 144
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :cond_0
    sput-object p0, Lcom/seuic/scanner/service/ScanService;->instance:Lcom/seuic/scanner/service/ScanService;

    .line 148
    return-void
.end method

.method private sendByBroadcast(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/seuic/scanner/DecodeInfo;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "codetype"

    iget-object v2, p2, Lcom/seuic/scanner/DecodeInfo;->codetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.scannerservice.broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scannerdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "enter"

    iget-object v2, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isAppend()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "append"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private sendByClipboard(Lcom/seuic/scanner/DecodeInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/seuic/scanner/DecodeInfo;

    .prologue
    .line 386
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/service/ScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 387
    .local v0, "cbm":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 388
    return-void
.end method

.method private sendByEmuKey(Ljava/lang/String;)V
    .locals 27
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v5, Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 348
    .local v5, "buff":Ljava/lang/StringBuffer;
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v17

    .line 349
    .local v17, "mKeyCharacterMap":Landroid/view/KeyCharacterMap;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_1

    .line 350
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v25

    aput-char v25, v23, v24

    .line 351
    .local v23, "temp":[C
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v24

    if-nez v24, :cond_0

    .line 352
    const/16 v24, 0x40

    move/from16 v0, v24

    invoke-virtual {v5, v12, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 349
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 356
    .end local v23    # "temp":[C
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 357
    .local v8, "chars":[C
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v10

    .line 360
    .local v10, "events":[Landroid/view/KeyEvent;
    :try_start_0
    const-string v24, "android.hardware.input.InputManager"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 361
    .local v6, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    .line 362
    .local v20, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v3, v20

    .local v3, "arr$":[Ljava/lang/reflect/Method;
    array-length v15, v3

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v3    # "arr$":[Ljava/lang/reflect/Method;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_4

    aget-object v18, v3, v14

    .line 363
    .local v18, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "getInstance"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 364
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 365
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 366
    .local v22, "object":Ljava/lang/Object;
    if-eqz v22, :cond_3

    .line 367
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 368
    .local v7, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v21

    .line 369
    .local v21, "methods2":[Ljava/lang/reflect/Method;
    move-object/from16 v4, v21

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    aget-object v19, v4, v13

    .line 370
    .local v19, "method2":Ljava/lang/reflect/Method;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "injectInputEvent"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 371
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 372
    const/4 v12, 0x0

    :goto_3
    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_2

    .line 373
    aget-object v9, v10, v12

    .line 374
    .local v9, "event":Landroid/view/KeyEvent;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 369
    .end local v9    # "event":Landroid/view/KeyEvent;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 362
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v7    # "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "method2":Ljava/lang/reflect/Method;
    .end local v21    # "methods2":[Ljava/lang/reflect/Method;
    .end local v22    # "object":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_1

    .line 380
    .end local v6    # "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "i$":I
    .end local v18    # "method":Ljava/lang/reflect/Method;
    .end local v20    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v11

    .line 381
    .local v11, "ex":Ljava/lang/Exception;
    const-string v24, "ScanService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendByEmuKey : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method private sendByFocus(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/seuic/scanner/DecodeInfo;

    .prologue
    .line 317
    const-string v4, "input_method"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 318
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    .local v2, "inputMethodMgrCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "setCommitText"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 321
    .local v3, "setCommitText":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 322
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v3    # "setCommitText":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    const v0, 0x1335312

    const-class v1, Lcom/seuic/scanner/activity/MainActivity;

    invoke-static {v0, p0, v1}, Lcom/seuic/scanner/util/NotifycationUtil;->startNotifyOnService(ILandroid/app/Service;Ljava/lang/Class;)V

    .line 69
    invoke-direct {p0}, Lcom/seuic/scanner/service/ScanService;->init()V

    .line 70
    return-void
.end method

.method public onDecodeComplete(Lcom/seuic/scanner/DecodeInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/seuic/scanner/DecodeInfo;

    .prologue
    .line 218
    invoke-virtual {p0, p0, p1}, Lcom/seuic/scanner/service/ScanService;->sendBarcode(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V

    .line 219
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-static {p0}, Lcom/seuic/scanner/util/NotifycationUtil;->stopNotifyWithService(Landroid/app/Service;)V

    .line 159
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->screenOnOffReceiver:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->screenOnOffReceiver:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mAppSettingReceiver:Lcom/seuic/scanner/receiver/AppSettingReceiver;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mAppSettingReceiver:Lcom/seuic/scanner/receiver/AppSettingReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mScannerDataReceiver:Lcom/seuic/scanner/receiver/ScannerDataReceiver;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mScannerDataReceiver:Lcom/seuic/scanner/receiver/ScannerDataReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mParamSettingsReceiver:Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/seuic/scanner/service/ScanService;->mParamSettingsReceiver:Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    :cond_4
    sget-object v0, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 180
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 181
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    sget-object v5, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v5}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 78
    :try_start_0
    sget-object v5, Lcom/seuic/scanner/service/ScanService;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v5}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v3, "screenOffIntentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v5, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    invoke-direct {v5}, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;-><init>()V

    iput-object v5, p0, Lcom/seuic/scanner/service/ScanService;->screenOnOffReceiver:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    .line 89
    iget-object v5, p0, Lcom/seuic/scanner/service/ScanService;->screenOnOffReceiver:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/seuic/scanner/service/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v2, "scannerDataFilter":Landroid/content/IntentFilter;
    const-string v5, "com.android.scanner.ENABLED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v5, "com.android.scanner.RESET_APPCONFIG"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v5, "com.android.scanner.TERMINATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v5, "com.scan.onStartScan"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v5, "com.scan.onEndScan"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    new-instance v5, Lcom/seuic/scanner/receiver/ScannerDataReceiver;

    invoke-direct {v5}, Lcom/seuic/scanner/receiver/ScannerDataReceiver;-><init>()V

    iput-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mScannerDataReceiver:Lcom/seuic/scanner/receiver/ScannerDataReceiver;

    .line 98
    iget-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mScannerDataReceiver:Lcom/seuic/scanner/receiver/ScannerDataReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/seuic/scanner/service/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v4, "settingsFilter":Landroid/content/IntentFilter;
    const-string v5, "com.android.scanner.service_settings"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v5, Lcom/seuic/scanner/receiver/AppSettingReceiver;

    invoke-direct {v5}, Lcom/seuic/scanner/receiver/AppSettingReceiver;-><init>()V

    iput-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mAppSettingReceiver:Lcom/seuic/scanner/receiver/AppSettingReceiver;

    .line 103
    iget-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mAppSettingReceiver:Lcom/seuic/scanner/receiver/AppSettingReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/seuic/scanner/service/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v1, "paramsFilter":Landroid/content/IntentFilter;
    const-string v5, "com.seuic.scanner.action.PARAM_SETTINGS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    new-instance v5, Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

    invoke-direct {v5}, Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;-><init>()V

    iput-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mParamSettingsReceiver:Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

    .line 108
    iget-object v5, p0, Lcom/seuic/scanner/service/ScanService;->mParamSettingsReceiver:Lcom/seuic/scanner/receiver/ScannerParamSettingsReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/seuic/scanner/service/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/seuic/scanner/service/ScanService;->registerScannerActionReceiver()V

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    .end local v1    # "paramsFilter":Landroid/content/IntentFilter;
    .end local v2    # "scannerDataFilter":Landroid/content/IntentFilter;
    .end local v3    # "screenOffIntentFilter":Landroid/content/IntentFilter;
    .end local v4    # "settingsFilter":Landroid/content/IntentFilter;
    :goto_0
    return v5

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 81
    const/4 v5, 0x2

    goto :goto_0
.end method

.method public onStatusCallBack(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "info"    # I

    .prologue
    .line 223
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 226
    :cond_0
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->notifyDecodeEvent()V

    .line 229
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized registerScannerActionReceiver()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/service/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    .line 124
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "scannerActionFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBCStartScan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBCStopScan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    invoke-direct {v1}, Lcom/seuic/scanner/receiver/ScannerActionReceiver;-><init>()V

    iput-object v1, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    .line 128
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->mScannerActionReceiver:Lcom/seuic/scanner/receiver/ScannerActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/seuic/scanner/service/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "scannerActionFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public restartNotify()V
    .locals 2

    .prologue
    .line 151
    invoke-static {p0}, Lcom/seuic/scanner/util/NotifycationUtil;->stopNotifyWithService(Landroid/app/Service;)V

    .line 152
    const v0, 0x1335312

    const-class v1, Lcom/seuic/scanner/activity/MainActivity;

    invoke-static {v0, p0, v1}, Lcom/seuic/scanner/util/NotifycationUtil;->startNotifyOnService(ILandroid/app/Service;Ljava/lang/Class;)V

    .line 153
    return-void
.end method

.method sendBarcode(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/seuic/scanner/DecodeInfo;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isPlaysound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {p1}, Lcom/seuic/scanner/util/SoundPlayer;->playSound(Landroid/content/Context;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isViberate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {p1}, Lcom/seuic/scanner/util/ViberatorUtil;->viberate(Landroid/content/Context;)V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterPrefixSuffixBlank()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "strNoPrefixSuffixBlank":Ljava/lang/String;
    iget-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 243
    iput-object v0, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    .line 246
    .end local v0    # "strNoPrefixSuffixBlank":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isFilterInvisibleChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/service/ScanService;->filterInvisibleChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v1

    sget-object v2, Lcom/seuic/scanner/util/Appconfig$SendMode;->FOCUS:Lcom/seuic/scanner/util/Appconfig$SendMode;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu()Z

    move-result v1

    if-nez v1, :cond_7

    .line 259
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/seuic/scanner/service/ScanService;->getEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    .line 262
    :cond_7
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isMainShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/seuic/scanner/service/ScanService;->sendByBroadcast(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V

    .line 285
    :cond_8
    :goto_0
    return-void

    .line 267
    :cond_9
    sget-object v1, Lcom/seuic/scanner/service/ScanService$2;->$SwitchMap$com$seuic$scanner$util$Appconfig$SendMode:[I

    iget-object v2, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig$SendMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/seuic/scanner/service/ScanService;->sendByFocus(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V

    .line 271
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/seuic/scanner/service/ScanService;->getEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/seuic/scanner/service/ScanService;->sendByEmuKey(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/seuic/scanner/service/ScanService;->sendByBroadcast(Landroid/content/Context;Lcom/seuic/scanner/DecodeInfo;)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v1, p2, Lcom/seuic/scanner/DecodeInfo;->barcode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/seuic/scanner/service/ScanService;->sendByEmuKey(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/seuic/scanner/service/ScanService;->sendByClipboard(Lcom/seuic/scanner/DecodeInfo;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
