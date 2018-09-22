.class Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->fowardToDev()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

.field final synthetic val$edt_password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iput-object p2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;->val$edt_password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 427
    const-string v1, "888888"

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;->val$edt_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCNDEVSETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 433
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-static {v1, v2}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
