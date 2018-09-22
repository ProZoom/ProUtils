.class public Lcom/seuic/scanner/service/ScanServiceIntent;
.super Ljava/lang/Object;
.source "ScanServiceIntent.java"


# static fields
.field static mContext:Landroid/content/Context;

.field static mIntent:Landroid/content/Intent;


# direct methods
.method public static start(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    sput-object p0, Lcom/seuic/scanner/service/ScanServiceIntent;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/seuic/scanner/service/ScanServiceIntent;->mIntent:Landroid/content/Intent;

    .line 18
    sget-object v0, Lcom/seuic/scanner/service/ScanServiceIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/seuic/scanner/service/ScanServiceIntent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/seuic/scanner/service/ScanServiceIntent;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/seuic/scanner/service/ScanServiceIntent;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/seuic/scanner/service/ScanServiceIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 25
    :cond_0
    return-void
.end method
