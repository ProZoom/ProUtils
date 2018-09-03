.class Lcom/ctsi/idcertification/CloudReaderClient$5;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctsi/idcertification/CloudReaderClient;->nfcReadCard(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctsi/idcertification/CloudReaderClient;

.field private final synthetic val$tag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Lcom/ctsi/idcertification/CloudReaderClient;Landroid/nfc/Tag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    iput-object p2, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->val$tag:Landroid/nfc/Tag;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 470
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v1}, Lcom/ctsi/idcertification/CloudReaderClient;->access$14(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$9(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->val$tag:Landroid/nfc/Tag;

    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v4}, Lcom/ctsi/idcertification/CloudReaderClient;->access$15(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v5}, Lcom/ctsi/idcertification/CloudReaderClient;->access$16(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/ctsi/idcertification/custom/CustomInterface;->nfcReadCard(Ljava/lang/String;Ljava/util/List;Landroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 471
    .local v6, "map":Ljava/util/Map;
    if-eqz v6, :cond_0

    .line 472
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient$5;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 479
    :cond_1
    return-void
.end method
