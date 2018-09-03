.class Lcom/example/idcertificationdemo/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity$3;->onBtState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/idcertificationdemo/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/example/idcertificationdemo/MainActivity$3;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 213
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v1}, Lcom/example/idcertificationdemo/MainActivity;->access$600(Lcom/example/idcertificationdemo/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/example/idcertificationdemo/MainActivity;->signature:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$900(Lcom/example/idcertificationdemo/MainActivity;)Lcom/ctsi/idcertification/BtReaderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v1, v1, Lcom/example/idcertificationdemo/MainActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v2, v2, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v2, v2, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v3, v3, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v3, v3, Lcom/example/idcertificationdemo/MainActivity;->nonce:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v4, v4, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v4, v4, Lcom/example/idcertificationdemo/MainActivity;->businessExt:Ljava/lang/String;

    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v5, v5, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v5, v5, Lcom/example/idcertificationdemo/MainActivity;->signature:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ctsi/idcertification/BtReaderClient;->cloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 216
    .local v6, "resultMap":Ljava/util/Map;
    if-eqz v6, :cond_0

    .line 217
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0, v6}, Lcom/example/idcertificationdemo/MainActivity;->access$002(Lcom/example/idcertificationdemo/MainActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 218
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3$1;->this$1:Lcom/example/idcertificationdemo/MainActivity$3;

    iget-object v0, v0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$300(Lcom/example/idcertificationdemo/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :cond_0
    return-void
.end method
