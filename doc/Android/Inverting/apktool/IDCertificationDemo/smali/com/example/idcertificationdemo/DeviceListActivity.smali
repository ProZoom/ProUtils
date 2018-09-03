.class public Lcom/example/idcertificationdemo/DeviceListActivity;
.super Landroid/app/Activity;
.source "DeviceListActivity.java"


# static fields
.field private static final D:Z = true

.field public static EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = null

.field public static EXTRA_DEVICE_NAME:Ljava/lang/String; = null

.field private static final MY_PERMISSION_REQUEST_CONSTANT:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "DeviceListActivity"


# instance fields
.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "device_address"

    sput-object v0, Lcom/example/idcertificationdemo/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    .line 53
    const-string v0, "device_name"

    sput-object v0, Lcom/example/idcertificationdemo/DeviceListActivity;->EXTRA_DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 167
    new-instance v0, Lcom/example/idcertificationdemo/DeviceListActivity$2;

    invoke-direct {v0, p0}, Lcom/example/idcertificationdemo/DeviceListActivity$2;-><init>(Lcom/example/idcertificationdemo/DeviceListActivity;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 190
    new-instance v0, Lcom/example/idcertificationdemo/DeviceListActivity$3;

    invoke-direct {v0, p0}, Lcom/example/idcertificationdemo/DeviceListActivity$3;-><init>(Lcom/example/idcertificationdemo/DeviceListActivity;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/example/idcertificationdemo/DeviceListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/idcertificationdemo/DeviceListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/example/idcertificationdemo/DeviceListActivity;->doDiscovery()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/DeviceListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/DeviceListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private doDiscovery()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "DeviceListActivity"

    const-string v1, "doDiscovery()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 152
    const-string v0, "\u641c\u7d22\u4e2d.."

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/DeviceListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 164
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f030002

    const/4 v8, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->requestWindowFeature(I)Z

    .line 75
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->setContentView(I)V

    .line 76
    const-string v7, "\u9009\u62e9\u8bbe\u5907"

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, v8}, Lcom/example/idcertificationdemo/DeviceListActivity;->setResult(I)V

    .line 81
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 82
    .local v6, "scanButton":Landroid/widget/Button;
    new-instance v7, Lcom/example/idcertificationdemo/DeviceListActivity$1;

    invoke-direct {v7, p0}, Lcom/example/idcertificationdemo/DeviceListActivity$1;-><init>(Lcom/example/idcertificationdemo/DeviceListActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-direct {v7, p0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 92
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-direct {v7, p0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 95
    const v7, 0x7f08000e

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 96
    .local v5, "pairedListView":Landroid/widget/ListView;
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    const v7, 0x7f080010

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 101
    .local v2, "newDevicesListView":Landroid/widget/ListView;
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/example/idcertificationdemo/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/example/idcertificationdemo/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 116
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 120
    .local v4, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 121
    const v7, 0x7f08000d

    invoke-virtual {p0, v7}, Lcom/example/idcertificationdemo/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const-string v3, "\u65e0\u914d\u5bf9\u8bbe\u5907"

    .line 127
    .local v3, "noDevices":Ljava/lang/String;
    iget-object v7, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 129
    .end local v3    # "noDevices":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/example/idcertificationdemo/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/DeviceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
