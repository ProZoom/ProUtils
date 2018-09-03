.class Lcom/ctsi/idcertification/custom/SunriseApi$1;
.super Ljava/lang/Object;
.source "SunriseApi.java"

# interfaces
.implements Lcom/sunrise/IClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctsi/idcertification/custom/SunriseApi;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctsi/idcertification/custom/SunriseApi;


# direct methods
.method constructor <init>(Lcom/ctsi/idcertification/custom/SunriseApi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ctsi/idcertification/custom/SunriseApi$1;->this$0:Lcom/ctsi/idcertification/custom/SunriseApi;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtState(Z)V
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi$1;->this$0:Lcom/ctsi/idcertification/custom/SunriseApi;

    invoke-static {v0}, Lcom/ctsi/idcertification/custom/SunriseApi;->access$0(Lcom/ctsi/idcertification/custom/SunriseApi;)Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;->onBtState(Z)V

    .line 71
    return-void
.end method
