.class Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setEndChar()V
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
    .line 528
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 532
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v1

    aget-object v0, v1, p2

    .line 535
    .local v0, "endChar":Lcom/seuic/scanner/util/Appconfig$EndChar;
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment;->txt_end_char_value:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/seuic/scanner/util/Appconfig;->setEndChar(Lcom/seuic/scanner/util/Appconfig$EndChar;)V

    .line 537
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v1, v1, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 541
    .end local v0    # "endChar":Lcom/seuic/scanner/util/Appconfig$EndChar;
    :cond_0
    return-void
.end method
