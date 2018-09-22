.class Lcom/seuic/scanner/service/ScanService$1;
.super Ljava/lang/Object;
.source "ScanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/service/ScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/service/ScanService;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/service/ScanService;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/seuic/scanner/service/ScanService$1;->this$0:Lcom/seuic/scanner/service/ScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/seuic/scanner/ScannerKey;->open()I

    move-result v0

    .line 188
    .local v0, "ret":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Lcom/seuic/scanner/ScannerKey;->getKeyEvent()I

    move-result v0

    .line 191
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isSrceenOff()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isScanEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService$1;->this$0:Lcom/seuic/scanner/service/ScanService;

    invoke-static {v1}, Lcom/seuic/scanner/service/ScanService;->access$000(Lcom/seuic/scanner/service/ScanService;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService$1;->this$0:Lcom/seuic/scanner/service/ScanService;

    invoke-static {v1}, Lcom/seuic/scanner/service/ScanService;->access$000(Lcom/seuic/scanner/service/ScanService;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isUpToStopScan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-static {}, Lcom/seuic/scanner/service/ScanService;->access$100()Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService$1;->this$0:Lcom/seuic/scanner/service/ScanService;

    invoke-static {v1}, Lcom/seuic/scanner/service/ScanService;->access$000(Lcom/seuic/scanner/service/ScanService;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/seuic/scanner/service/ScanService$1;->this$0:Lcom/seuic/scanner/service/ScanService;

    invoke-static {v1}, Lcom/seuic/scanner/activity/ContinueDecode;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {}, Lcom/seuic/scanner/service/ScanService;->access$100()Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/ScannerManager;->startScan()V

    goto :goto_0

    .line 213
    :cond_3
    return-void

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
