.class Lcom/example/idcertificationdemo/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity$2;->onTagDiscovered(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/idcertificationdemo/MainActivity$2;

.field final synthetic val$tag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity$2;Landroid/nfc/Tag;)V
    .locals 0
    .param p1, "this$1"    # Lcom/example/idcertificationdemo/MainActivity$2;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iput-object p2, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->val$tag:Landroid/nfc/Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 179
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v1}, Lcom/example/idcertificationdemo/MainActivity;->access$600(Lcom/example/idcertificationdemo/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/example/idcertificationdemo/MainActivity;->signature:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$700(Lcom/example/idcertificationdemo/MainActivity;)Lcom/ctsi/idcertification/CloudReaderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v2, v2, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v2, v2, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v3, v3, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v3, v3, Lcom/example/idcertificationdemo/MainActivity;->nonce:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v4, v4, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v4, v4, Lcom/example/idcertificationdemo/MainActivity;->businessExt:Ljava/lang/String;

    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v5, v5, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v5, v5, Lcom/example/idcertificationdemo/MainActivity;->signature:Ljava/lang/String;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->val$tag:Landroid/nfc/Tag;

    invoke-virtual/range {v0 .. v7}, Lcom/ctsi/idcertification/CloudReaderClient;->CloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/nfc/Tag;)Ljava/util/Map;

    move-result-object v8

    .line 184
    .local v8, "resultMap":Ljava/util/Map;
    if-eqz v8, :cond_0

    .line 185
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0, v8}, Lcom/example/idcertificationdemo/MainActivity;->access$002(Lcom/example/idcertificationdemo/MainActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 186
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$2$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$2;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$2;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$300(Lcom/example/idcertificationdemo/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    return-void
.end method
