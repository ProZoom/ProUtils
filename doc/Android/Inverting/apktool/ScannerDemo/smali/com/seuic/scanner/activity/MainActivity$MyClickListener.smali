.class Lcom/seuic/scanner/activity/MainActivity$MyClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/seuic/scanner/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;->this$0:Lcom/seuic/scanner/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/seuic/scanner/activity/MainActivity;Lcom/seuic/scanner/activity/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/seuic/scanner/activity/MainActivity;
    .param p2, "x1"    # Lcom/seuic/scanner/activity/MainActivity$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;-><init>(Lcom/seuic/scanner/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;->this$0:Lcom/seuic/scanner/activity/MainActivity;

    invoke-static {v0}, Lcom/seuic/scanner/activity/MainActivity;->access$100(Lcom/seuic/scanner/activity/MainActivity;)Lcom/seuic/scanner/activity/SelectPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/seuic/scanner/activity/MainActivity$MyClickListener;->this$0:Lcom/seuic/scanner/activity/MainActivity;

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Lcom/seuic/scanner/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x35

    const/16 v3, 0xa

    const/16 v4, 0x55

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/seuic/scanner/activity/SelectPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0059
        :pswitch_0
    .end packed-switch
.end method
