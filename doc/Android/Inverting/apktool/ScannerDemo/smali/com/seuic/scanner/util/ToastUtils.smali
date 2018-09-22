.class public Lcom/seuic/scanner/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field static toast:Landroid/widget/Toast;


# direct methods
.method public static show(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 19
    sget-object v0, Lcom/seuic/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    .line 24
    :goto_0
    sget-object v0, Lcom/seuic/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/seuic/scanner/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method
