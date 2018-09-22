.class Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setDefalut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$4;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$4;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v0, v0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1600(Lcom/seuic/scanner/activity/SettingsFragment;)V

    .line 598
    return-void
.end method
