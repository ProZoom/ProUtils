.class public Lcom/seuic/scanner/util/Appconfig;
.super Ljava/lang/Object;
.source "Appconfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/util/Appconfig$Charset;,
        Lcom/seuic/scanner/util/Appconfig$EndChar;,
        Lcom/seuic/scanner/util/Appconfig$SendMode;
    }
.end annotation


# static fields
.field private static appconfig:Lcom/seuic/scanner/util/Appconfig;

.field private static configFile:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private bcKey:Ljava/lang/String;

.field private bcName:Ljava/lang/String;

.field private bcStartScan:Ljava/lang/String;

.field private bcStopScan:Ljava/lang/String;

.field private charset:Lcom/seuic/scanner/util/Appconfig$Charset;

.field private endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

.field private filterInvisibleChars:Z

.field private filterPrefixSuffixBlank:Z

.field private hasCharset:Z

.field private interval:I

.field private isAddEnterEvent:Z

.field private isAppend:Z

.field private isEndCharOnEmu:Z

.field private isShowType:Z

.field private isUpToStopScan:Z

.field private isbootstart:Z

.field private isclear:Z

.field private iscontinue:Z

.field private isplaysound:Z

.field private isviberate:Z

.field private prefix:Ljava/lang/String;

.field private sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

.field private suffix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/seuic/scanner/util/Appconfig;->isplaysound:Z

    .line 36
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->isviberate:Z

    .line 37
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->isclear:Z

    .line 38
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->iscontinue:Z

    .line 39
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/seuic/scanner/util/Appconfig;->interval:I

    .line 40
    iput-boolean v2, p0, Lcom/seuic/scanner/util/Appconfig;->isbootstart:Z

    .line 41
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->isAppend:Z

    .line 42
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->isShowType:Z

    .line 43
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->BROADCAST:Lcom/seuic/scanner/util/Appconfig$SendMode;

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 44
    const-string v0, "com.android.server.scannerservice.broadcast"

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcName:Ljava/lang/String;

    .line 45
    const-string v0, "scannerdata"

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcKey:Ljava/lang/String;

    .line 46
    const-string v0, "com.scan.onStartScan"

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcStartScan:Ljava/lang/String;

    .line 47
    const-string v0, "com.scan.onEndScan"

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcStopScan:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->prefix:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->suffix:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->ENTER:Lcom/seuic/scanner/util/Appconfig$EndChar;

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 51
    iput-boolean v2, p0, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan:Z

    .line 52
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu:Z

    .line 53
    iput-boolean v2, p0, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent:Z

    .line 54
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->filterInvisibleChars:Z

    .line 55
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$Charset;->AutoDetect:Lcom/seuic/scanner/util/Appconfig$Charset;

    iput-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 56
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->hasCharset:Z

    .line 57
    iput-boolean v1, p0, Lcom/seuic/scanner/util/Appconfig;->filterPrefixSuffixBlank:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/seuic/scanner/util/Appconfig;->init(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0}, Lcom/seuic/scanner/util/Appconfig;->initSettings()V

    .line 76
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/seuic/scanner/util/Appconfig;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/seuic/scanner/util/Appconfig;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/seuic/scanner/util/Appconfig;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/seuic/scanner/util/Appconfig;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/util/Appconfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lcom/seuic/scanner/util/Appconfig;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/Appconfig;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/seuic/scanner/util/Appconfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "setting.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/Appconfig;->configFile:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private initSettings()V
    .locals 11

    .prologue
    const/16 v10, 0x322

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 93
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 94
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 95
    .local v4, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/seuic/scanner/util/Appconfig;->configFile:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "configName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "eventType":I
    if-eq v2, v6, :cond_2

    .line 101
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-string v5, "PlaySound"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isplaysound:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 172
    .end local v0    # "configName":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Appconfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSettings Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->hasCharset:Z

    if-nez v5, :cond_3

    .line 183
    iput-boolean v6, p0, Lcom/seuic/scanner/util/Appconfig;->hasCharset:Z

    .line 184
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-virtual {v5}, Lcom/seuic/scanner/util/Appconfig$Charset;->ordinal()I

    move-result v5

    invoke-static {v10, v5}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    .line 188
    :cond_3
    return-void

    .restart local v0    # "configName":Ljava/lang/String;
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    move v5, v7

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    :try_start_2
    const-string v5, "AutoClear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 111
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isclear:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 174
    .end local v0    # "configName":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v5, "Appconfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSettings Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 178
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v5

    goto :goto_2

    .restart local v0    # "configName":Ljava/lang/String;
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    move v5, v7

    .line 111
    goto :goto_3

    .line 112
    :cond_7
    :try_start_4
    const-string v5, "Viberate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 113
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isviberate:Z

    goto/16 :goto_0

    :cond_8
    move v5, v7

    goto :goto_4

    .line 114
    :cond_9
    const-string v5, "ScanContinue"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 115
    const-string v5, "param1"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 116
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_5
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->iscontinue:Z

    goto/16 :goto_0

    :cond_a
    move v5, v7

    goto :goto_5

    .line 117
    :cond_b
    const-string v5, "param2"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/seuic/scanner/util/Appconfig;->interval:I

    goto/16 :goto_0

    .line 120
    :cond_c
    const-string v5, "Bootstart"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 121
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    :goto_6
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isbootstart:Z

    goto/16 :goto_0

    :cond_d
    move v5, v7

    goto :goto_6

    .line 122
    :cond_e
    const-string v5, "Append"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 123
    const-string v5, "param1"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 124
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    :goto_7
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isAppend:Z

    goto/16 :goto_0

    :cond_f
    move v5, v7

    goto :goto_7

    .line 125
    :cond_10
    const-string v5, "param2"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 126
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->suffix:Ljava/lang/String;

    goto/16 :goto_0

    .line 127
    :cond_11
    const-string v5, "param3"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 128
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->prefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :cond_12
    const-string v5, "param4"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const-class v5, Lcom/seuic/scanner/util/Appconfig$EndChar;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/seuic/scanner/util/Appconfig$EndChar;

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

    goto/16 :goto_0

    .line 132
    :cond_13
    const-string v5, "SendMode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 133
    const-class v5, Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/seuic/scanner/util/Appconfig$SendMode;

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

    goto/16 :goto_0

    .line 134
    :cond_14
    const-string v5, "BcName"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 135
    const-string v5, "param1"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 136
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->bcName:Ljava/lang/String;

    goto/16 :goto_0

    .line 137
    :cond_15
    const-string v5, "param2"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 138
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->bcKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :cond_16
    const-string v5, "param3"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 140
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->bcStartScan:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_17
    const-string v5, "param4"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 142
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->bcStopScan:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    :cond_18
    const-string v5, "param5"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_19

    move v5, v6

    :goto_8
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent:Z

    goto/16 :goto_0

    :cond_19
    move v5, v7

    goto :goto_8

    .line 146
    :cond_1a
    const-string v5, "ShowType"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 147
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v6

    :goto_9
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isShowType:Z

    goto/16 :goto_0

    :cond_1b
    move v5, v7

    goto :goto_9

    .line 148
    :cond_1c
    const-string v5, "UpToStopScan"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 149
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v6

    :goto_a
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan:Z

    goto/16 :goto_0

    :cond_1d
    move v5, v7

    goto :goto_a

    .line 150
    :cond_1e
    const-string v5, "IsEndCharOnEmu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 151
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1f

    move v5, v6

    :goto_b
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu:Z

    goto/16 :goto_0

    :cond_1f
    move v5, v7

    goto :goto_b

    .line 152
    :cond_20
    const-string v5, "FilterInvisibleChars"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 153
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_21

    move v5, v6

    :goto_c
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->filterInvisibleChars:Z

    goto/16 :goto_0

    :cond_21
    move v5, v7

    goto :goto_c

    .line 154
    :cond_22
    const-string v5, "FilterPrefixSuffixBlank"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 155
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_23

    move v5, v6

    :goto_d
    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->filterPrefixSuffixBlank:Z

    goto/16 :goto_0

    :cond_23
    move v5, v7

    goto :goto_d

    .line 156
    :cond_24
    const-string v5, "Charset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/seuic/scanner/util/Appconfig;->hasCharset:Z

    .line 158
    const-class v5, Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/seuic/scanner/util/Appconfig$Charset;

    iput-object v5, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 159
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/16 v5, 0x322

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-virtual {v8}, Lcom/seuic/scanner/util/Appconfig$Charset;->ordinal()I

    move-result v8

    invoke-static {v5, v8}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    goto/16 :goto_0

    .line 166
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveSettings()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    const/4 v4, 0x0

    .line 369
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v2, 0x0

    .line 371
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 373
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/seuic/scanner/util/Appconfig;->configFile:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 377
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "UTF-8"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 380
    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    const/4 v7, 0x0

    const-string v8, "configs"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "PlaySound"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isplaysound:Z

    if-eqz v7, :cond_1

    move v7, v5

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "Viberate"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isviberate:Z

    if-eqz v7, :cond_2

    move v7, v5

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "AutoClear"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isclear:Z

    if-eqz v7, :cond_3

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "ScanContinue"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->iscontinue:Z

    if-eqz v7, :cond_4

    move v7, v5

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/seuic/scanner/util/Appconfig;->interval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "Bootstart"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isbootstart:Z

    if-eqz v7, :cond_5

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "Append"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isAppend:Z

    if-eqz v7, :cond_6

    move v7, v5

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->suffix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    const/4 v7, 0x0

    const-string v8, "param3"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/4 v7, 0x0

    const-string v8, "param3"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const/4 v7, 0x0

    const-string v8, "param4"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const/4 v7, 0x0

    const-string v8, "param4"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "SendMode"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "Charset"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "BcName"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    iget-object v7, p0, Lcom/seuic/scanner/util/Appconfig;->bcName:Ljava/lang/String;

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    iget-object v7, p0, Lcom/seuic/scanner/util/Appconfig;->bcKey:Ljava/lang/String;

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    const/4 v7, 0x0

    const-string v8, "param2"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    const/4 v7, 0x0

    const-string v8, "param3"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    iget-object v7, p0, Lcom/seuic/scanner/util/Appconfig;->bcStartScan:Ljava/lang/String;

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const/4 v7, 0x0

    const-string v8, "param3"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const/4 v7, 0x0

    const-string v8, "param4"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    iget-object v7, p0, Lcom/seuic/scanner/util/Appconfig;->bcStopScan:Ljava/lang/String;

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const/4 v7, 0x0

    const-string v8, "param4"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const/4 v7, 0x0

    const-string v8, "param5"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent:Z

    if-eqz v7, :cond_7

    move v7, v5

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    const/4 v7, 0x0

    const-string v8, "param5"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "ShowType"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isShowType:Z

    if-eqz v7, :cond_8

    move v7, v5

    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "UpToStopScan"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan:Z

    if-eqz v7, :cond_9

    move v7, v5

    :goto_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "IsEndCharOnEmu"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu:Z

    if-eqz v7, :cond_a

    move v7, v5

    :goto_9
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "FilterInvisibleChars"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/seuic/scanner/util/Appconfig;->filterInvisibleChars:Z

    if-eqz v7, :cond_b

    move v7, v5

    :goto_a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const/4 v7, 0x0

    const-string v8, "config"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const/4 v7, 0x0

    const-string v8, "name"

    const-string v9, "FilterPrefixSuffixBlank"

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    const/4 v7, 0x0

    const-string v8, "param1"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p0, Lcom/seuic/scanner/util/Appconfig;->filterPrefixSuffixBlank:Z

    if-eqz v8, :cond_c

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const/4 v5, 0x0

    const-string v6, "param1"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const/4 v5, 0x0

    const-string v6, "config"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const/4 v5, 0x0

    const-string v6, "configs"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 526
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    if-eqz v3, :cond_e

    .line 535
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 542
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_c
    return-void

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    move v7, v6

    .line 387
    goto/16 :goto_0

    :cond_2
    move v7, v6

    .line 395
    goto/16 :goto_1

    :cond_3
    move v7, v6

    .line 403
    goto/16 :goto_2

    :cond_4
    move v7, v6

    .line 411
    goto/16 :goto_3

    :cond_5
    move v7, v6

    .line 423
    goto/16 :goto_4

    :cond_6
    move v7, v6

    .line 432
    goto/16 :goto_5

    :cond_7
    move v7, v6

    .line 478
    goto/16 :goto_6

    :cond_8
    move v7, v6

    .line 486
    goto/16 :goto_7

    :cond_9
    move v7, v6

    .line 494
    goto/16 :goto_8

    :cond_a
    move v7, v6

    .line 502
    goto/16 :goto_9

    :cond_b
    move v7, v6

    .line 510
    goto/16 :goto_a

    :cond_c
    move v5, v6

    .line 518
    goto :goto_b

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 538
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 528
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 529
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_d
    :try_start_3
    const-string v5, "Appconfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateResultFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    if-eqz v2, :cond_0

    .line 535
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    .line 536
    :catch_2
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 530
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 531
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_e
    :try_start_5
    const-string v5, "Appconfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateResultFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 533
    if-eqz v2, :cond_0

    .line 535
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    .line 536
    :catch_4
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 533
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_f
    if-eqz v2, :cond_d

    .line 535
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 538
    :cond_d
    :goto_10
    throw v5

    .line 536
    :catch_5
    move-exception v0

    .line 537
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 533
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 530
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_e

    .line 528
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_d

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_e
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_c
.end method


# virtual methods
.method public getBCStartScan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcStartScan:Ljava/lang/String;

    return-object v0
.end method

.method public getBCStopScan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcStopScan:Ljava/lang/String;

    return-object v0
.end method

.method public getBcKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->bcName:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Lcom/seuic/scanner/util/Appconfig$Charset;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    return-object v0
.end method

.method public getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/seuic/scanner/util/Appconfig;->interval:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSendMode()Lcom/seuic/scanner/util/Appconfig$SendMode;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/seuic/scanner/util/Appconfig;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isAddEnterEvent()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent:Z

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isAppend:Z

    return v0
.end method

.method public isBootstart()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isbootstart:Z

    return v0
.end method

.method public isClear()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isclear:Z

    return v0
.end method

.method public isContinue()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->iscontinue:Z

    return v0
.end method

.method public isEndCharOnEmu()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu:Z

    return v0
.end method

.method public isFilterInvisibleChars()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->filterInvisibleChars:Z

    return v0
.end method

.method public isFilterPrefixSuffixBlank()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->filterPrefixSuffixBlank:Z

    return v0
.end method

.method public isPlaysound()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isplaysound:Z

    return v0
.end method

.method public isShowType()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isShowType:Z

    return v0
.end method

.method public isUpToStopScan()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan:Z

    return v0
.end method

.method public isViberate()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/seuic/scanner/util/Appconfig;->isviberate:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/seuic/scanner/util/Appconfig;->initSettings()V

    .line 192
    return-void
.end method

.method public save()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/seuic/scanner/util/Appconfig;->saveSettings()V

    .line 324
    return-void
.end method

.method public setAddEnterEvent(Z)V
    .locals 0
    .param p1, "addEnterEvent"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent:Z

    .line 348
    return-void
.end method

.method public setAppend(Z)V
    .locals 0
    .param p1, "isAppend"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isAppend:Z

    .line 248
    return-void
.end method

.method public setBCStartScan(Ljava/lang/String;)V
    .locals 0
    .param p1, "bcStartScan"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->bcStartScan:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setBCStopScan(Ljava/lang/String;)V
    .locals 0
    .param p1, "bcStopScan"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->bcStopScan:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setBcKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "bcKey"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->bcKey:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setBcName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bcName"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->bcName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setBootstart(Z)V
    .locals 0
    .param p1, "isbootstart"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isbootstart:Z

    .line 550
    return-void
.end method

.method public setCharset(Lcom/seuic/scanner/util/Appconfig$Charset;)V
    .locals 0
    .param p1, "charsetId"    # Lcom/seuic/scanner/util/Appconfig$Charset;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->charset:Lcom/seuic/scanner/util/Appconfig$Charset;

    .line 264
    return-void
.end method

.method public setEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)V
    .locals 0
    .param p1, "endChar"    # Lcom/seuic/scanner/util/Appconfig$EndChar;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->endChar:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 256
    return-void
.end method

.method public setEndCharOnEmu(Z)V
    .locals 0
    .param p1, "onEmu"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isEndCharOnEmu:Z

    .line 340
    return-void
.end method

.method public setFilterInvisibleChars(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->filterInvisibleChars:Z

    .line 356
    return-void
.end method

.method public setFilterPrefixSuffixBlank(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->filterPrefixSuffixBlank:Z

    .line 364
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/seuic/scanner/util/Appconfig;->interval:I

    .line 332
    return-void
.end method

.method public setIsclear(Z)V
    .locals 0
    .param p1, "isclear"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isclear:Z

    .line 312
    return-void
.end method

.method public setIscontinue(Z)V
    .locals 0
    .param p1, "iscontinue"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->iscontinue:Z

    .line 288
    return-void
.end method

.method public setIsplaysound(Z)V
    .locals 0
    .param p1, "isplaysound"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isplaysound:Z

    .line 296
    return-void
.end method

.method public setIsviberate(Z)V
    .locals 0
    .param p1, "isviberate"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isviberate:Z

    .line 304
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->prefix:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setSendMode(Lcom/seuic/scanner/util/Appconfig$SendMode;)V
    .locals 0
    .param p1, "sendMode"    # Lcom/seuic/scanner/util/Appconfig$SendMode;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->sendMode:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 224
    return-void
.end method

.method public setShowType(Z)V
    .locals 0
    .param p1, "isShowType"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isShowType:Z

    .line 200
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/seuic/scanner/util/Appconfig;->suffix:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setUpToStopScan(Z)V
    .locals 0
    .param p1, "up"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan:Z

    .line 320
    return-void
.end method
