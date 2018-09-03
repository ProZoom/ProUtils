.class Lcom/ctsi/idcertification/CloudReaderClient$2;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"

# interfaces
.implements Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctsi/idcertification/CloudReaderClient;
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
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$2;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadFinish(Ljava/util/Map;)V
    .locals 3
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$2;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ctsi/idcertification/CloudReaderClient;->access$4(Lcom/ctsi/idcertification/CloudReaderClient;Z)V

    .line 514
    iget-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient$2;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v1, p1}, Lcom/ctsi/idcertification/CloudReaderClient;->access$5(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/util/Map;)V

    .line 516
    const-string v1, "resultFlag"

    .line 515
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 517
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    .line 518
    const-string v1, "stepFlag"

    const-string v2, "4"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    return-void
.end method
