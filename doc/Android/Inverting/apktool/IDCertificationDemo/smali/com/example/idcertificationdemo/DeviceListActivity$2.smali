.class Lcom/example/idcertificationdemo/DeviceListActivity$2;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/example/idcertificationdemo/DeviceListActivity$2;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/example/idcertificationdemo/DeviceListActivity$2;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-static {v4}, Lcom/example/idcertificationdemo/DeviceListActivity;->access$100(Lcom/example/idcertificationdemo/DeviceListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 173
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x11

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "address":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x11

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "btName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v3, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/example/idcertificationdemo/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    sget-object v4, Lcom/example/idcertificationdemo/DeviceListActivity;->EXTRA_DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v4, p0, Lcom/example/idcertificationdemo/DeviceListActivity$2;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/example/idcertificationdemo/DeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    iget-object v4, p0, Lcom/example/idcertificationdemo/DeviceListActivity$2;->this$0:Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-virtual {v4}, Lcom/example/idcertificationdemo/DeviceListActivity;->finish()V

    .line 185
    return-void
.end method
