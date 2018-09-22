.class Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setCharset()V
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
    .line 493
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 497
    const/4 v2, -0x1

    if-le p2, v2, :cond_0

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v2

    aget-object v0, v2, p2

    .line 500
    .local v0, "charsetId":Lcom/seuic/scanner/util/Appconfig$Charset;
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->txt_charset_value:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/16 v2, 0x322

    invoke-static {v2, p2}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    move-result v1

    .line 503
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/seuic/scanner/util/Appconfig;->setCharset(Lcom/seuic/scanner/util/Appconfig$Charset;)V

    .line 504
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;->this$1:Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 508
    .end local v0    # "charsetId":Lcom/seuic/scanner/util/Appconfig$Charset;
    .end local v1    # "ret":Z
    :cond_0
    return-void
.end method
