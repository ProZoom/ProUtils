.class Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;
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

.field final synthetic val$mOcrBind:Landroid/util/SparseIntArray;

.field final synthetic val$m_RadioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$ocrCurrentFont:I

.field final synthetic val$ocrCurrentLength:I

.field final synthetic val$ocrLengthEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/widget/RadioGroup;Landroid/util/SparseIntArray;Landroid/widget/EditText;II)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    iput-object p2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$m_RadioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$mOcrBind:Landroid/util/SparseIntArray;

    iput-object p4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrLengthEdit:Landroid/widget/EditText;

    iput p5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrCurrentFont:I

    iput p6, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrCurrentLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1206
    :try_start_0
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$m_RadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 1207
    .local v1, "index":I
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$mOcrBind:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$mOcrBind:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1208
    .local v2, "ocrNewFont":I
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrLengthEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1210
    .local v3, "ocrNewLength":I
    if-ltz v2, :cond_0

    const/4 v4, 0x5

    if-gt v2, v4, :cond_0

    if-lt v3, v6, :cond_0

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 1212
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v1    # "index":I
    .end local v2    # "ocrNewFont":I
    .end local v3    # "ocrNewLength":I
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    iget-object v5, v5, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v5, v5, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v6, 0x7f070074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1226
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    invoke-static {v4, p1, v7}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1700(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/content/DialogInterface;Z)V

    .line 1229
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 1213
    .restart local v1    # "index":I
    .restart local v2    # "ocrNewFont":I
    .restart local v3    # "ocrNewLength":I
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrCurrentFont:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->val$ocrCurrentLength:I

    if-eq v4, v3, :cond_4

    .line 1216
    :cond_2
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 1217
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    invoke-static {v4, v2, v3}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1600(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;II)V

    .line 1219
    :cond_3
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1700(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/content/DialogInterface;Z)V

    goto :goto_0

    .line 1221
    :cond_4
    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener$1;->this$1:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1700(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;Landroid/content/DialogInterface;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
