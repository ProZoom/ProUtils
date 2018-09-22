.class Lcom/seuic/scanner/activity/BarcodeFragment$1;
.super Ljava/lang/Thread;
.source "BarcodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/BarcodeFragment;->loadParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/BarcodeFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$1;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$1;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$000(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    .line 133
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$1;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method
