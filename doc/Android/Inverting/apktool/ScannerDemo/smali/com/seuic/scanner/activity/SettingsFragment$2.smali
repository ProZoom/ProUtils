.class Lcom/seuic/scanner/activity/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/SettingsFragment;
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
    .line 630
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 634
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 635
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 641
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1, v4}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1802(Lcom/seuic/scanner/activity/SettingsFragment;Z)Z

    .line 642
    return v4

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$2;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
