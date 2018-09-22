.class Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;
.super Ljava/lang/Object;
.source "ScreenOnOffReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-boolean v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mScreenOn:Z

    if-nez v1, :cond_1

    .line 66
    const-string v1, "ScreenOffReceiver"

    const-string v2, "Scanner close start "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 70
    :cond_0
    invoke-static {v3}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 71
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    .line 72
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 73
    invoke-static {v4}, Lcom/seuic/scanner/util/AppCache;->setSrceenOff(Z)V

    .line 74
    const-string v1, "ScreenOffReceiver"

    const-string v2, "Scanner close end "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v2, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->runnable:Ljava/lang/Runnable;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_2
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 76
    :cond_1
    const-string v1, "ScreenOffReceiver"

    const-string v2, "Scanner open start "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v3}, Lcom/seuic/scanner/util/AppCache;->setSrceenOff(Z)V

    .line 78
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;->this$0:Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;

    iget-object v1, v1, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 79
    invoke-static {v4}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 80
    const-string v1, "ScreenOffReceiver"

    const-string v2, "Scanner open end "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
