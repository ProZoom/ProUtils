.class public Lcom/seuic/scanner/util/WakeLockCtrl;
.super Ljava/lang/Object;
.source "WakeLockCtrl.java"


# static fields
.field static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static lock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    sget-object v1, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 12
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 13
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "Scanner WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    sget-object v1, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 17
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    sget-object v1, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 20
    :cond_1
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/seuic/scanner/util/WakeLockCtrl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    :cond_0
    return-void
.end method
