.class Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SettingsFragment;


# direct methods
.method private constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment;Lcom/seuic/scanner/activity/SettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;
    .param p2, "x1"    # Lcom/seuic/scanner/activity/SettingsFragment$1;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 377
    return-void

    .line 340
    :sswitch_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setIsplaysound(Z)V

    goto :goto_0

    .line 343
    :sswitch_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setIsviberate(Z)V

    goto :goto_0

    .line 346
    :sswitch_2
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setIsclear(Z)V

    goto :goto_0

    .line 349
    :sswitch_3
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setIscontinue(Z)V

    .line 350
    if-nez p2, :cond_0

    .line 351
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    goto :goto_0

    .line 355
    :sswitch_4
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setBootstart(Z)V

    goto :goto_0

    .line 358
    :sswitch_5
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setAppend(Z)V

    goto :goto_0

    .line 361
    :sswitch_6
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setShowType(Z)V

    goto :goto_0

    .line 364
    :sswitch_7
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setUpToStopScan(Z)V

    goto :goto_0

    .line 367
    :sswitch_8
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setEndCharOnEmu(Z)V

    goto :goto_0

    .line 370
    :sswitch_9
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setFilterInvisibleChars(Z)V

    goto :goto_0

    .line 373
    :sswitch_a
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$CheckedChangeListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/seuic/scanner/util/Appconfig;->setFilterPrefixSuffixBlank(Z)V

    goto :goto_0

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a001b -> :sswitch_0
        0x7f0a001d -> :sswitch_1
        0x7f0a001f -> :sswitch_5
        0x7f0a0021 -> :sswitch_2
        0x7f0a0023 -> :sswitch_4
        0x7f0a0025 -> :sswitch_6
        0x7f0a0027 -> :sswitch_9
        0x7f0a0029 -> :sswitch_a
        0x7f0a002b -> :sswitch_7
        0x7f0a002d -> :sswitch_3
        0x7f0a0043 -> :sswitch_8
    .end sparse-switch
.end method
