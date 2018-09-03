.class Lcom/ctsi/idcertification/CloudReaderClient$4;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctsi/idcertification/CloudReaderClient;->otgReadCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctsi/idcertification/CloudReaderClient;


# direct methods
.method constructor <init>(Lcom/ctsi/idcertification/CloudReaderClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 421
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbCheckState()Ljava/util/Map;

    move-result-object v4

    .line 426
    .local v4, "state":Ljava/util/Map;
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbConnect()Ljava/util/Map;

    move-result-object v0

    .line 428
    .local v0, "bConnect":Ljava/util/Map;
    const-string v5, "resultFlag"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 429
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    .line 431
    :cond_0
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 432
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v3, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "resultFlag"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v5, "errorMsg"

    const-string v6, "\u8fde\u63a5\u8bbe\u5907\u5931\u8d25\uff01"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v5, "stepFlag"

    const-string v6, "3"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    .line 449
    .end local v3    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    return-void

    .line 422
    .end local v0    # "bConnect":Ljava/util/Map;
    .end local v4    # "state":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bConnect":Ljava/util/Map;
    .restart local v4    # "state":Ljava/util/Map;
    :cond_2
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v6}, Lcom/ctsi/idcertification/CloudReaderClient;->access$14(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v7}, Lcom/ctsi/idcertification/CloudReaderClient;->access$9(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$15(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v9}, Lcom/ctsi/idcertification/CloudReaderClient;->access$16(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 442
    .local v2, "map":Ljava/util/Map;
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 443
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    .line 447
    :cond_3
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$4;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_1
.end method
