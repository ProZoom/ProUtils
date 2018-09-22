.class public Lcom/seuic/scanner/activity/DevSettingsActivity;
.super Landroid/app/Activity;
.source "DevSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final BC_KEY_MAX_LENGTH:I

.field private final BC_NAME_MAX_LENGTH:I

.field private appconfig:Lcom/seuic/scanner/util/Appconfig;

.field private btn_default:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private edt_bc_key:Landroid/widget/EditText;

.field private edt_bc_name:Landroid/widget/EditText;

.field private edt_bc_start_scan:Landroid/widget/EditText;

.field private edt_bc_stop_scan:Landroid/widget/EditText;

.field private mModel:Ljava/lang/String;

.field private swt_enter_event:Landroid/widget/Switch;

.field private txt_bc_enter_event:Landroid/widget/TextView;

.field private txt_bc_key:Landroid/widget/TextView;

.field private txt_bc_name:Landroid/widget/TextView;

.field private txt_bc_start_scan:Landroid/widget/TextView;

.field private txt_bc_stop_scan:Landroid/widget/TextView;

.field private txt_bc_title:Landroid/widget/TextView;

.field private txt_dev_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->BC_NAME_MAX_LENGTH:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->BC_KEY_MAX_LENGTH:I

    return-void
.end method

.method private defaultBCSettings()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    const-string v1, "scannerdata"

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setBcKey(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    const-string v1, "com.android.server.scannerservice.broadcast"

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setBcName(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    const-string v1, "com.scan.onStartScan"

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setBCStartScan(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    const-string v1, "com.scan.onEndScan"

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setBCStopScan(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_key:Landroid/widget/EditText;

    const-string v1, "scannerdata"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_name:Landroid/widget/EditText;

    const-string v1, "com.android.server.scannerservice.broadcast"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_start_scan:Landroid/widget/EditText;

    const-string v1, "com.scan.onStartScan"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_stop_scan:Landroid/widget/EditText;

    const-string v1, "com.scan.onEndScan"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0700a3

    invoke-static {p0, v0}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 157
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 65
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_default:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_default:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_save:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_key:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_name:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_start_scan:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_stop_scan:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_name:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_key:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_title:Landroid/widget/TextView;

    .line 79
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_dev_title:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_start_scan:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_stop_scan:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_enter_event:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->swt_enter_event:Landroid/widget/Switch;

    .line 86
    invoke-static {}, Lcom/seuic/scanner/activity/ModelInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->mModel:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_name:Landroid/widget/TextView;

    const v1, 0x7f0700b3

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_key:Landroid/widget/TextView;

    const v1, 0x7f0700b4

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_title:Landroid/widget/TextView;

    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_dev_title:Landroid/widget/TextView;

    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_default:Landroid/widget/Button;

    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->btn_save:Landroid/widget/Button;

    const v1, 0x7f0700b9

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_start_scan:Landroid/widget/TextView;

    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->txt_bc_stop_scan:Landroid/widget/TextView;

    const v1, 0x7f0700b8

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->swt_enter_event:Landroid/widget/Switch;

    const v1, 0x7f0700ba

    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method private saveBCSettings()V
    .locals 8

    .prologue
    const v5, 0x7f0700be

    const v7, 0x7f0700bc

    const/16 v6, 0xff

    .line 161
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "bcName":Ljava/lang/String;
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_key:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "bcKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_start_scan:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "bcStartScan":Ljava/lang/String;
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_stop_scan:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "bcStopScan":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const v4, 0x7f0700bf

    invoke-static {p0, v4}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    .line 215
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-static {p0, v5}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-static {p0, v5}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-static {p0, v5}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_4

    .line 187
    const v4, 0x7f0700bd

    invoke-static {p0, v4}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 192
    invoke-static {p0, v7}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_6

    .line 197
    invoke-static {p0, v7}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_7

    .line 202
    invoke-static {p0, v7}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 206
    :cond_7
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v4, v0}, Lcom/seuic/scanner/util/Appconfig;->setBcKey(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v4, v1}, Lcom/seuic/scanner/util/Appconfig;->setBcName(Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v4, v2}, Lcom/seuic/scanner/util/Appconfig;->setBCStartScan(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v4, v3}, Lcom/seuic/scanner/util/Appconfig;->setBCStopScan(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    iget-object v5, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->swt_enter_event:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/seuic/scanner/util/Appconfig;->setAddEnterEvent(Z)V

    .line 212
    invoke-static {}, Lcom/seuic/scanner/service/ScanService;->getInstance()Lcom/seuic/scanner/service/ScanService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/service/ScanService;->registerScannerActionReceiver()V

    .line 214
    const v4, 0x7f0700a2

    invoke-static {p0, v4}, Lcom/seuic/scanner/util/ToastUtils;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->save()V

    .line 124
    return-void

    .line 117
    :pswitch_0
    invoke-direct {p0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->defaultBCSettings()V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-direct {p0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->saveBCSettings()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a000c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-direct {p0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->refresh()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->init()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_key:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_start_scan:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBCStartScan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->edt_bc_stop_scan:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBCStopScan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->swt_enter_event:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->isAddEnterEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    invoke-static {v2}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 100
    const-string v0, "AUTOIDPAD"

    iget-object v1, p0, Lcom/seuic/scanner/activity/DevSettingsActivity;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/DevSettingsActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Lcom/seuic/scanner/activity/DevSettingsActivity;->setRequestedOrientation(I)V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method
