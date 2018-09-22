.class Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/ScanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/ScanFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/ScanFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/seuic/scanner/activity/ScanFragment;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/seuic/scanner/activity/ScanFragment;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;->this$0:Lcom/seuic/scanner/activity/ScanFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/ScanFragment;->access$100(Lcom/seuic/scanner/activity/ScanFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 131
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/seuic/scanner/activity/ScanFragment;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-object p2
.end method
