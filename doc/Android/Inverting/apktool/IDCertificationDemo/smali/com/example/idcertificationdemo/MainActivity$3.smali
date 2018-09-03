.class Lcom/example/idcertificationdemo/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtState(Z)V
    .locals 3
    .param p1, "bConnected"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$800(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/example/idcertificationdemo/MainActivity$3$1;-><init>(Lcom/example/idcertificationdemo/MainActivity$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity$3;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v0}, Lcom/example/idcertificationdemo/MainActivity;->access$400(Lcom/example/idcertificationdemo/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u84dd\u7259\u8bbe\u5907\u5df2\u65ad\u5f00\uff01"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
