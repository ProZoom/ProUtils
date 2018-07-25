.class public Lcom/example/urovoscan/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private barcodeStr:Ljava/lang/String;

.field private isScaning:Z

.field private mScanManager:Landroid/device/ScanManager;

.field private mScanReceiver:Landroid/content/BroadcastReceiver;

.field private showScanResult:Landroid/widget/EditText;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/urovoscan/MainActivity;->isScaning:Z

    .line 34
    const-string v0, "scanapk"

    iput-object v0, p0, Lcom/example/urovoscan/MainActivity;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/example/urovoscan/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/urovoscan/MainActivity$1;-><init>(Lcom/example/urovoscan/MainActivity;)V

    iput-object v0, p0, Lcom/example/urovoscan/MainActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/example/urovoscan/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/example/urovoscan/MainActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->showScanResult:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/urovoscan/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/urovoscan/MainActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->barcodeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/urovoscan/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/example/urovoscan/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/example/urovoscan/MainActivity;->barcodeStr:Ljava/lang/String;

    return-object p1
.end method

.method private initScan()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/device/ScanManager;

    invoke-direct {v0}, Landroid/device/ScanManager;-><init>()V

    iput-object v0, p0, Lcom/example/urovoscan/MainActivity;->mScanManager:Landroid/device/ScanManager;

    .line 67
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->mScanManager:Landroid/device/ScanManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/device/ScanManager;->getOutputParameter(I)I

    move-result v0

    iput v0, p0, Lcom/example/urovoscan/MainActivity;->type:I

    .line 68
    iget v0, p0, Lcom/example/urovoscan/MainActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 73
    :pswitch_2
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 77
    :pswitch_3
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    .line 80
    :pswitch_4
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 86
    :pswitch_5
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 89
    :pswitch_6
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private setupView()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/urovoscan/MainActivity;->showScanResult:Landroid/widget/EditText;

    .line 153
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/example/urovoscan/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 58
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/example/urovoscan/MainActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/example/urovoscan/MainActivity;->setupView()V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 203
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/example/urovoscan/MainActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/example/urovoscan/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    invoke-direct {p0}, Lcom/example/urovoscan/MainActivity;->initScan()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "urovo.rcv.message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/example/urovoscan/MainActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/example/urovoscan/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 186
    return-void
.end method
