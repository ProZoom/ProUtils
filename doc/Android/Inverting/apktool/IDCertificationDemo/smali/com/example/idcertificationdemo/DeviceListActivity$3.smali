.class Lcom/example/idcertificationdemo/DeviceListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/idcertificationdemo/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/DeviceListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/DeviceListActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 200
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 201
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-static {v3}, Lcom/example/idcertificationdemo/DeviceListActivity;->access$200(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 205
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-static {v3}, Lcom/example/idcertificationdemo/DeviceListActivity;->access$200(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 220
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/example/idcertificationdemo/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 214
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    const-string v4, "\u9009\u62e9\u8bbe\u5907"

    invoke-virtual {v3, v4}, Lcom/example/idcertificationdemo/DeviceListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-static {v3}, Lcom/example/idcertificationdemo/DeviceListActivity;->access$200(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const-string v2, "\u65e0\u53ef\u7528\u8bbe\u5907"

    .line 217
    .local v2, "noDevices":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/idcertificationdemo/DeviceListActivity$3;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-static {v3}, Lcom/example/idcertificationdemo/DeviceListActivity;->access$200(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
