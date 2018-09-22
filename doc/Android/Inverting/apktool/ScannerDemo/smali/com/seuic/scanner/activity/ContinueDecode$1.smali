.class final Lcom/seuic/scanner/activity/ContinueDecode$1;
.super Ljava/lang/Object;
.source "ContinueDecode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/ContinueDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 116
    sput-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    .line 117
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/seuic/scanner/activity/ContinueDecode;->access$000(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->mContinuousEnable:Z

    .line 119
    :goto_1
    sget-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->terminate:Z

    if-nez v0, :cond_0

    .line 121
    :try_start_0
    sget-object v2, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->startScan()V

    .line 124
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 126
    sget-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->terminate:Z

    if-eqz v0, :cond_2

    .line 127
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :cond_0
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    .line 145
    sput-boolean v1, Lcom/seuic/scanner/activity/ContinueDecode;->running:Z

    .line 146
    return-void

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0

    .line 130
    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/seuic/scanner/activity/ContinueDecode;->mContinuousEnable:Z

    if-eqz v0, :cond_3

    .line 131
    monitor-exit v2

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_1

    .line 134
    :cond_3
    :try_start_4
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v0

    instance-of v0, v0, Lcom/seuic/scanner/SE965Scanner;

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    sget-object v3, Lcom/seuic/scanner/activity/ContinueDecode;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v3}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v3

    add-int/lit16 v3, v3, 0xc8

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 139
    :goto_2
    monitor-exit v2

    goto :goto_1

    .line 137
    :cond_4
    sget-object v0, Lcom/seuic/scanner/activity/ContinueDecode;->mThread:Ljava/lang/Thread;

    sget-object v3, Lcom/seuic/scanner/activity/ContinueDecode;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v3}, Lcom/seuic/scanner/util/Appconfig;->getInterval()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
