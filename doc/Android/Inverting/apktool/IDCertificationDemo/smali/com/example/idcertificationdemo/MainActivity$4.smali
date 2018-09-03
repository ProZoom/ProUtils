.class Lcom/example/idcertificationdemo/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/idcertificationdemo/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$4;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$4;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-virtual {v1}, Lcom/example/idcertificationdemo/MainActivity;->clearUI()V

    .line 268
    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$4;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v1}, Lcom/example/idcertificationdemo/MainActivity;->access$900(Lcom/example/idcertificationdemo/MainActivity;)Lcom/ctsi/idcertification/BtReaderClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ctsi/idcertification/BtReaderClient;->disconnectBt()Ljava/lang/Boolean;

    .line 269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$4;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    const-class v2, Lcom/example/idcertificationdemo/DeviceListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v0, "serverIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity$4;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/example/idcertificationdemo/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    return-void
.end method
