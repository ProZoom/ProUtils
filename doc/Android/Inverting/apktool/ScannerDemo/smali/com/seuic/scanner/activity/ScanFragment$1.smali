.class Lcom/seuic/scanner/activity/ScanFragment$1;
.super Ljava/lang/Object;
.source "ScanFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/ScanFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/ScanFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/ScanFragment;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/seuic/scanner/activity/ScanFragment$1;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    invoke-static {}, Lcom/seuic/scanner/activity/ScanFragment;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    invoke-static {}, Lcom/seuic/scanner/activity/ScanFragment;->access$300()Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method
