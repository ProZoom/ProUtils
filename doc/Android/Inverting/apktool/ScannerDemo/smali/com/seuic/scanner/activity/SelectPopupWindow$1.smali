.class Lcom/seuic/scanner/activity/SelectPopupWindow$1;
.super Ljava/lang/Object;
.source "SelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seuic/scanner/activity/SelectPopupWindow;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$1;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-object v2, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$1;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-static {v2}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$000(Lcom/seuic/scanner/activity/SelectPopupWindow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 101
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 102
    if-ge v1, v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$1;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-virtual {v2}, Lcom/seuic/scanner/activity/SelectPopupWindow;->dismiss()V

    .line 106
    :cond_0
    return v4
.end method
