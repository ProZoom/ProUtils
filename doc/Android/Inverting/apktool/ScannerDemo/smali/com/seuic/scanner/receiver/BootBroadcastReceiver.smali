.class public Lcom/seuic/scanner/receiver/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# static fields
.field static appconfig:Lcom/seuic/scanner/util/Appconfig;

.field static mContext:Landroid/content/Context;


# instance fields
.field manager:Landroid/os/PowerManager;

.field runnable:Ljava/lang/Runnable;

.field scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;-><init>(Lcom/seuic/scanner/receiver/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 31
    sput-object p1, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->isBootstart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->manager:Landroid/os/PowerManager;

    .line 39
    sget-object v0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 40
    iget-object v0, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 41
    const-class v0, Lcom/seuic/scanner/service/ScanService;

    invoke-static {p1, v0}, Lcom/seuic/scanner/service/ScanServiceIntent;->start(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
