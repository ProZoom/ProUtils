.class public Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/ScanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/ScanFragment;


# direct methods
.method public constructor <init>(Lcom/seuic/scanner/activity/ScanFragment;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/ScanFragment;->access$200(Lcom/seuic/scanner/activity/ScanFragment;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seuic/scanner/util/Appconfig;->getBcKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "barcode":Ljava/lang/String;
    const-string v3, "codetype"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isMainShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-virtual {v3, v0, v2}, Lcom/seuic/scanner/activity/ScanFragment;->doGetDecode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
