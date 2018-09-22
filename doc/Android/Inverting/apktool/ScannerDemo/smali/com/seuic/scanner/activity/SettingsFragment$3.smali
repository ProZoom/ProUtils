.class Lcom/seuic/scanner/activity/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
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
    .line 773
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$3;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$3;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 781
    return-void
.end method
