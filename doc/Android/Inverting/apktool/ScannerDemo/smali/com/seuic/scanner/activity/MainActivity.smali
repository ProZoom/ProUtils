.class public Lcom/seuic/scanner/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;,
        Lcom/seuic/scanner/activity/MainActivity$MyClickListener;
    }
.end annotation


# instance fields
.field private fragmentManager:Landroid/app/FragmentManager;

.field final homeFilter:Landroid/content/IntentFilter;

.field private final homePressReceiver:Landroid/content/BroadcastReceiver;

.field private img_setting:Landroid/widget/ImageButton;

.field private mModel:Ljava/lang/String;

.field private popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private rb_barcode:Landroid/widget/RadioButton;

.field private rb_scan:Landroid/widget/RadioButton;

.field private rb_settings:Landroid/widget/RadioButton;

.field private scnManager:Lcom/seuic/scanner/util/ScannerManager;

.field private txt_appname:Landroid/widget/TextView;

.field private txt_version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->homeFilter:Landroid/content/IntentFilter;

    .line 219
    new-instance v0, Lcom/seuic/scanner/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/activity/MainActivity$1;-><init>(Lcom/seuic/scanner/activity/MainActivity;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->homePressReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/seuic/scanner/activity/MainActivity;)Lcom/seuic/scanner/activity/SelectPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/MainActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seuic/scanner/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/seuic/scanner/activity/MainActivity;->changeFragment(I)V

    return-void
.end method

.method private changeFragment(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 200
    invoke-static {p1}, Lcom/seuic/scanner/activity/FragmentFactory;->getFragmentByIndex(I)Landroid/app/Fragment;

    move-result-object v0

    .line 201
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/seuic/scanner/activity/ScanFragment;

    if-nez v2, :cond_1

    .line 203
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-static {}, Lcom/seuic/scanner/activity/ContinueDecode;->terminate()V

    .line 207
    :cond_0
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/seuic/scanner/activity/MainActivity;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/ScannerManager;->stopScan()V

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/seuic/scanner/activity/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 212
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 213
    const v2, 0x7f0a0012

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 214
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 215
    invoke-static {p1}, Lcom/seuic/scanner/util/AppCache;->setCurFragmentId(I)V

    .line 216
    return-void
.end method

.method private initField()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-static {p0}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 106
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->getCurFragmentId()I

    move-result v0

    .line 107
    .local v0, "curid":I
    if-lez v0, :cond_0

    .line 108
    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    invoke-direct {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->changeFragment(I)V

    .line 125
    :goto_1
    new-instance v1, Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-direct {v1, p0}, Lcom/seuic/scanner/activity/SelectPopupWindow;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    .line 127
    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->homePressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/seuic/scanner/activity/MainActivity;->homeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/seuic/scanner/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const-class v1, Lcom/seuic/scanner/service/ScanService;

    invoke-static {p0, v1}, Lcom/seuic/scanner/service/ScanServiceIntent;->start(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    return-void

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_barcode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_scan:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_settings:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 121
    :cond_0
    const v1, 0x7f0a000f

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/MainActivity;->changeFragment(I)V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0a000f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 69
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->txt_version:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->txt_version:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->txt_appname:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_barcode:Landroid/widget/RadioButton;

    .line 75
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_scan:Landroid/widget/RadioButton;

    .line 76
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_settings:Landroid/widget/RadioButton;

    .line 78
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->img_setting:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->img_setting:Landroid/widget/ImageButton;

    new-instance v1, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;-><init>(Lcom/seuic/scanner/activity/MainActivity;Lcom/seuic/scanner/activity/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    .line 84
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 86
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;

    invoke-direct {v1, p0}, Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;-><init>(Lcom/seuic/scanner/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 88
    invoke-static {}, Lcom/seuic/scanner/activity/ModelInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->mModel:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->refresh()V

    .line 153
    invoke-static {}, Lcom/seuic/scanner/service/ScanService;->getInstance()Lcom/seuic/scanner/service/ScanService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/service/ScanService;->restartNotify()V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/seuic/scanner/activity/MainActivity;->initUI()V

    .line 63
    invoke-direct {p0}, Lcom/seuic/scanner/activity/MainActivity;->initField()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/SelectPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/SelectPopupWindow;->dismiss()V

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "AUTOIDPAD"

    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/seuic/scanner/activity/MainActivity;->setRequestedOrientation(I)V

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    return-void
.end method

.method refresh()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_barcode:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_scan:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->rb_settings:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->txt_appname:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->getCurFragmentId()I

    move-result v0

    invoke-static {v0}, Lcom/seuic/scanner/activity/FragmentFactory;->getFragmentByIndex(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/views/IFragment;

    invoke-interface {v0}, Lcom/seuic/scanner/views/IFragment;->refresh()V

    .line 163
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity;->popupWindow:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/SelectPopupWindow;->refresh()V

    .line 164
    return-void
.end method
