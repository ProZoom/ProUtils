.class Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$2;
.super Ljava/lang/Object;
.source "BarcodeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->setOcrConfigDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$2;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$2;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1700(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/content/DialogInterface;Z)V

    .line 1237
    return-void
.end method
