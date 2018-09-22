.class public Lcom/seuic/scanner/activity/ContinueDecode;
.super Ljava/lang/Object;
.source "ContinueDecode.java"


# static fields
.field static appconfig:Lcom/seuic/scanner/util/Appconfig;

.field static continueDecode:Lcom/seuic/scanner/activity/ContinueDecode;

.field static mContext:Landroid/content/Context;

.field static mContinuousEnable:Z

.field static mThread:Ljava/lang/Thread;

.field static runnable:Ljava/lang/Runnable;

.field static running:Z

.field static scnManager:Lcom/seuic/scanner/util/ScannerManager;

.field static terminate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->terminate:Z

    .line 32
    sput-boolean v1, Lcom/seuic/scanner/activity/ContinueDecode;->mContinuousEnable:Z

    .line 111
    new-instance v0, Lcom/seuic/scanner/activity/ContinueDecode$1;

    invoke-direct {v0}, Lcom/seuic/scanner/activity/ContinueDecode$1;-><init>()V

    sput-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 14
    invoke-static {p0}, Lcom/seuic/scanner/activity/ContinueDecode;->getParamValue(I)I

    move-result v0

    return v0
.end method

.method private static getParamValue(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 105
    invoke-static {p0}, Lcom/seuic/scanner/util/ScannerManager;->availParam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/seuic/scanner/util/ScannerManager;->getParams(I)I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sput-object p0, Lcom/seuic/scanner/activity/ContinueDecode;->mContext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->continueDecode:Lcom/seuic/scanner/activity/ContinueDecode;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/seuic/scanner/activity/ContinueDecode;

    invoke-direct {v0}, Lcom/seuic/scanner/activity/ContinueDecode;-><init>()V

    sput-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->continueDecode:Lcom/seuic/scanner/activity/ContinueDecode;

    .line 43
    :cond_0
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_1

    .line 44
    invoke-static {p0}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 47
    :cond_1
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    if-nez v0, :cond_2

    .line 48
    invoke-static {p0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 50
    :cond_2
    return-void
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    return v0
.end method

.method public static notifyDecodeEvent()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 97
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {p0}, Lcom/seuic/scanner/activity/ContinueDecode;->init(Landroid/content/Context;)V

    .line 56
    sput-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->terminate:Z

    .line 58
    sput-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->mContinuousEnable:Z

    .line 60
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    .line 65
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    invoke-static {p0}, Lcom/seuic/scanner/util/WakeLockCtrl;->lock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static terminate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    const/4 v1, 0x1

    sput-boolean v1, Lcom/seuic/scanner/activity/ContinueDecode;->terminate:Z

    .line 73
    sput-boolean v4, Lcom/seuic/scanner/activity/ContinueDecode;->mContinuousEnable:Z

    .line 74
    sget-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    sget-object v2, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    sget-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    sget-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 80
    const/4 v1, 0x0

    sput-object v1, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    sput-boolean v4, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/seuic/scanner/util/WakeLockCtrl;->release()V

    .line 89
    return-void

    .line 78
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v1, "ContinueDecode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    sput-boolean v4, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    sput-boolean v4, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    throw v1
.end method
