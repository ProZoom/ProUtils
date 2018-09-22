.class Lcom/seuic/scanner/activity/SettingsFragment$1;
.super Ljava/lang/Thread;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment;->restoreParamsOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$1;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 620
    const/16 v2, 0x321

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    move-result v1

    .line 621
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 622
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 623
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$1;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    return-void
.end method
