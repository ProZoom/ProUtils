.class public Lcom/seuic/scanner/util/ViberatorUtil;
.super Ljava/lang/Object;
.source "ViberatorUtil.java"


# static fields
.field private static mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static viberate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    sget-object v0, Lcom/seuic/scanner/util/ViberatorUtil;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 13
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/seuic/scanner/util/ViberatorUtil;->mVibrator:Landroid/os/Vibrator;

    .line 15
    :cond_0
    sget-object v0, Lcom/seuic/scanner/util/ViberatorUtil;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 16
    return-void
.end method
