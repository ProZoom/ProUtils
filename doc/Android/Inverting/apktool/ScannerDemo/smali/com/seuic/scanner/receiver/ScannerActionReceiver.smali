.class public Lcom/seuic/scanner/receiver/ScannerActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScannerActionReceiver.java"


# instance fields
.field private scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScannerActionReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_2

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScannerActionReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/receiver/ScannerActionReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 26
    :cond_0
    monitor-exit p0

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29
    :cond_2
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->getBCStartScan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScannerActionReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->startScan()V

    goto :goto_0

    .line 31
    :cond_3
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->getBCStopScan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/seuic/scanner/receiver/ScannerActionReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    goto :goto_0
.end method
