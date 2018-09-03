.class Lcom/ctsi/idcertification/CloudReaderClient$6;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctsi/idcertification/CloudReaderClient;->btReadCard()V
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
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 492
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    const/4 v1, 0x0

    .line 498
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v3}, Lcom/ctsi/idcertification/CloudReaderClient;->access$14(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v4}, Lcom/ctsi/idcertification/CloudReaderClient;->access$9(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$15(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v6}, Lcom/ctsi/idcertification/CloudReaderClient;->access$16(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/ctsi/idcertification/custom/CustomInterface;->btReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 501
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 502
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$6;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 506
    :cond_1
    return-void

    .line 493
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
