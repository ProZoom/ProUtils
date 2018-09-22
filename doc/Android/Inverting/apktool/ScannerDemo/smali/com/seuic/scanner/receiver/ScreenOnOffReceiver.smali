.class public Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOnOffReceiver.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mScreenOn:Z

.field runnable:Ljava/lang/Runnable;

.field scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mScreenOn:Z

    .line 60
    new-instance v0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver$1;-><init>(Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;)V

    iput-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const-string v0, "ScreenOffReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    iput-boolean v3, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mScreenOn:Z

    .line 35
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 38
    :cond_1
    invoke-static {v3}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 39
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    .line 40
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 41
    invoke-static {v4}, Lcom/seuic/scanner/util/AppCache;->setSrceenOff(Z)V

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iput-boolean v4, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->mScreenOn:Z

    .line 45
    invoke-static {v3}, Lcom/seuic/scanner/util/AppCache;->setSrceenOff(Z)V

    .line 46
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScreenOnOffReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 47
    invoke-static {v4}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    goto :goto_0
.end method
