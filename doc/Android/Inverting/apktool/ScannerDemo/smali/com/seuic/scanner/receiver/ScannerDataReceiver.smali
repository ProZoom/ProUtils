.class public Lcom/seuic/scanner/receiver/ScannerDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScannerDataReceiver.java"


# instance fields
.field private scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v1, :cond_1

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 29
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const-string v1, "com.android.scanner.ENABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    const-string v1, "enabled"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    .local v0, "enalbed":Z
    if-eqz v0, :cond_3

    .line 36
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->enable()V

    .line 37
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 55
    .end local v0    # "enalbed":Z
    :cond_2
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 39
    .restart local v0    # "enalbed":Z
    :cond_3
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->disable()V

    .line 40
    invoke-static {v3}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    goto :goto_0

    .line 42
    .end local v0    # "enalbed":Z
    :cond_4
    const-string v1, "com.android.scanner.TERMINATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-static {}, Lcom/seuic/scanner/util/SoundPlayer;->release()V

    .line 44
    invoke-static {}, Lcom/seuic/scanner/service/ScanServiceIntent;->stop()V

    .line 45
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 48
    :cond_5
    iget-object v1, p0, Lcom/seuic/scanner/receiver/ScannerDataReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/seuic/scanner/util/AppCache;->setOpened(Ljava/lang/Boolean;)V

    .line 50
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 51
    :cond_6
    const-string v1, "com.android.scanner.RESET_APPCONFIG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->reset()V

    goto :goto_0
.end method
