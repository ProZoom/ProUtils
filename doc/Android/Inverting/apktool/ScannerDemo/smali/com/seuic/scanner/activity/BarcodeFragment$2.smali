.class Lcom/seuic/scanner/activity/BarcodeFragment$2;
.super Landroid/os/Handler;
.source "BarcodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/BarcodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/BarcodeFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {v0, v1}, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$102(Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;)Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    .line 143
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$200(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$100()Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$200(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;

    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {v1, v2}, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$2;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    .line 148
    :cond_0
    return-void
.end method
