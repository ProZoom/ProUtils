.class public Lcom/seuic/scanner/receiver/StartScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartScanReceiver.java"


# instance fields
.field scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/receiver/StartScanReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.seuic.action.START_SCANSERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/seuic/scanner/receiver/StartScanReceiver;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 20
    const-class v0, Lcom/seuic/scanner/service/ScanService;

    invoke-static {p1, v0}, Lcom/seuic/scanner/service/ScanServiceIntent;->start(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    :cond_0
    return-void
.end method
