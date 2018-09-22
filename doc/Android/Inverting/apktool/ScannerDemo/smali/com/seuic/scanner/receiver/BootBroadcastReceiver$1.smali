.class Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BootBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/receiver/BootBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final RETRY_TIME:I

.field final synthetic this$0:Lcom/seuic/scanner/receiver/BootBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/receiver/BootBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;->this$0:Lcom/seuic/scanner/receiver/BootBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;->RETRY_TIME:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;->this$0:Lcom/seuic/scanner/receiver/BootBroadcastReceiver;

    iget-object v2, v2, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->manager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/seuic/scanner/receiver/BootBroadcastReceiver$1;->this$0:Lcom/seuic/scanner/receiver/BootBroadcastReceiver;

    iget-object v2, v2, Lcom/seuic/scanner/receiver/BootBroadcastReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/ScannerManager;->closeSCN()V

    .line 54
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/seuic/scanner/util/AppCache;->setOpened(Ljava/lang/Boolean;)V

    .line 55
    const-string v2, "BootBroadcastReceiver"

    const-string v3, "boot close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
