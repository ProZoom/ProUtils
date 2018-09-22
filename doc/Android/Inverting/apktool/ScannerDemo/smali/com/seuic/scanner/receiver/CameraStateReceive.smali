.class public Lcom/seuic/scanner/receiver/CameraStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "CameraStateReceive.java"


# instance fields
.field private final CAMERA_STATUS_KEY:Ljava/lang/String;

.field private manager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "camera_status"

    iput-object v0, p0, Lcom/seuic/scanner/receiver/CameraStateReceive;->CAMERA_STATUS_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/seuic/scanner/receiver/CameraStateReceive;->manager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v1, :cond_0

    .line 21
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/seuic/scanner/receiver/CameraStateReceive;->manager:Lcom/seuic/scanner/util/ScannerManager;

    .line 24
    :cond_0
    const-string v1, "camera_status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    const-string v1, "camera_status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "cameraOn":Z
    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setCameraOn(Z)V

    .line 27
    if-eqz v0, :cond_3

    .line 28
    invoke-static {p1}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/seuic/scanner/receiver/CameraStateReceive;->manager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 36
    .end local v0    # "cameraOn":Z
    :cond_2
    :goto_0
    return-void

    .line 33
    .restart local v0    # "cameraOn":Z
    :cond_3
    iget-object v1, p0, Lcom/seuic/scanner/receiver/CameraStateReceive;->manager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    goto :goto_0
.end method
