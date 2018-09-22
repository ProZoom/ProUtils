.class Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SettingsFragment;


# direct methods
.method private constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/seuic/scanner/activity/SettingsFragment;Lcom/seuic/scanner/activity/SettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/seuic/scanner/activity/SettingsFragment;
    .param p2, "x1"    # Lcom/seuic/scanner/activity/SettingsFragment$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;-><init>(Lcom/seuic/scanner/activity/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method fowardToDev()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 415
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, "edt_password":Landroid/widget/EditText;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 420
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;

    invoke-direct {v4, p0, v0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$1;-><init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$402(Lcom/seuic/scanner/activity/SettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 437
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$400(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 438
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$400(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 439
    return-void
.end method

.method modifyInterval()V
    .locals 8

    .prologue
    const v6, 0x7f07007e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 549
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    .line 550
    .local v0, "enabled":Z
    if-eqz v0, :cond_2

    .line 552
    :try_start_0
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 554
    .local v2, "interval":I
    if-lez v2, :cond_0

    const v5, 0xea60

    if-le v2, v5, :cond_1

    .line 555
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    .end local v2    # "interval":I
    :catch_0
    move-exception v1

    .line 560
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v5, v5, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 585
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 557
    .restart local v2    # "interval":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/seuic/scanner/util/Appconfig;->setInterval(I)V

    .line 558
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seuic/scanner/util/Appconfig;->save()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1200(Lcom/seuic/scanner/activity/SettingsFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 575
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v6, v6, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 584
    .end local v2    # "interval":I
    :goto_1
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 566
    :catch_1
    move-exception v1

    .line 567
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v5, v5, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 577
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v6, v6, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1400(Lcom/seuic/scanner/activity/SettingsFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 579
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 580
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 581
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 582
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1100(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 584
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 411
    :goto_1
    return-void

    .line 389
    :sswitch_0
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->modifyInterval()V

    goto :goto_0

    .line 392
    :sswitch_1
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setDefalut()V

    goto :goto_0

    .line 395
    :sswitch_2
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setSuffix()V

    goto :goto_0

    .line 398
    :sswitch_3
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setPrefix()V

    goto :goto_0

    .line 401
    :sswitch_4
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->fowardToDev()V

    goto :goto_1

    .line 404
    :sswitch_5
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setEndChar()V

    goto :goto_1

    .line 407
    :sswitch_6
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->setCharset()V

    goto :goto_1

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0031 -> :sswitch_0
        0x7f0a0033 -> :sswitch_1
        0x7f0a0035 -> :sswitch_2
        0x7f0a0038 -> :sswitch_3
        0x7f0a003b -> :sswitch_5
        0x7f0a003d -> :sswitch_6
        0x7f0a0048 -> :sswitch_4
    .end sparse-switch
.end method

.method setCharset()V
    .locals 8

    .prologue
    .line 482
    invoke-static {}, Lcom/seuic/scanner/util/Appconfig$Charset;->values()[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v5

    array-length v5, v5

    new-array v0, v5, [Ljava/lang/String;

    .line 483
    .local v0, "charsetStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 484
    .local v1, "checkedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v5

    array-length v4, v5

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 486
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seuic/scanner/util/Appconfig;->getCharset()Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$900(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$Charset;

    move-result-object v6

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_0

    .line 487
    move v1, v3

    .line 484
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-virtual {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v6, v6, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;

    invoke-direct {v6, p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$2;-><init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;)V

    invoke-virtual {v5, v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 512
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 513
    return-void
.end method

.method setDefalut()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$4;

    invoke-direct {v3, p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$4;-><init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v2, v2, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1502(Lcom/seuic/scanner/activity/SettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 602
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 603
    iget-object v0, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 604
    return-void
.end method

.method setEndChar()V
    .locals 8

    .prologue
    .line 517
    invoke-static {}, Lcom/seuic/scanner/util/Appconfig$EndChar;->values()[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v5

    array-length v5, v5

    new-array v0, v5, [Ljava/lang/String;

    .line 518
    .local v0, "charsStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 519
    .local v1, "checkedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v5

    array-length v4, v5

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 521
    iget-object v5, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seuic/scanner/util/Appconfig;->getEndChar()Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v5

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->access$1000(Lcom/seuic/scanner/activity/SettingsFragment;)[Lcom/seuic/scanner/util/Appconfig$EndChar;

    move-result-object v6

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_0

    .line 522
    move v1, v3

    .line 519
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-virtual {v6}, Lcom/seuic/scanner/activity/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v6, v6, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;

    invoke-direct {v6, p0}, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener$3;-><init>(Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;)V

    invoke-virtual {v5, v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 545
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 546
    return-void
.end method

.method setPrefix()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 462
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    .line 463
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    .line 464
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 465
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-static {v1, v2}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 479
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/seuic/scanner/util/Appconfig;->setPrefix(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 470
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$800(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v3, v3, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :goto_1
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$800(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v3, v3, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 474
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 475
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 476
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$700(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 478
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method setSuffix()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    .line 443
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    .line 444
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 445
    iget-object v1, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/SettingsFragment;->access$300(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700ae

    invoke-static {v1, v2}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 459
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/seuic/scanner/util/Appconfig;->setSuffix(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$200(Lcom/seuic/scanner/activity/SettingsFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 450
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$600(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v3, v3, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :goto_1
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$600(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    iget-object v3, v3, Lcom/seuic/scanner/activity/SettingsFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 454
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 455
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 456
    iget-object v2, p0, Lcom/seuic/scanner/activity/SettingsFragment$SettingClickListener;->this$0:Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SettingsFragment;->access$500(Lcom/seuic/scanner/activity/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 458
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
