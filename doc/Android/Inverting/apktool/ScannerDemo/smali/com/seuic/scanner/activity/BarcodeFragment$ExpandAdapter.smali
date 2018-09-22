.class Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BarcodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/BarcodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/BarcodeFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method private HHPScannerPostCodeObjectBind(Lcom/seuic/scanner/model/ParamObject;)V
    .locals 2
    .param p1, "object"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_3

    .line 903
    invoke-virtual {p1}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v0

    const/16 v1, 0x261

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$700()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 904
    invoke-static {p1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$702(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;

    .line 907
    :cond_0
    invoke-virtual {p1}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v0

    const/16 v1, 0x262

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$800()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 908
    invoke-static {p1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$802(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;

    .line 911
    :cond_1
    invoke-virtual {p1}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v0

    const/16 v1, 0x264

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$900()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 912
    invoke-static {p1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$902(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;

    .line 915
    :cond_2
    invoke-virtual {p1}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v0

    const/16 v1, 0x265

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1000()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 916
    invoke-static {p1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1002(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;

    .line 919
    :cond_3
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 824
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/model/ParamObject;

    .line 827
    .local v0, "object":Lcom/seuic/scanner/model/ParamObject;
    monitor-exit v2

    .line 829
    return-object v0

    .line 827
    .end local v0    # "object":Lcom/seuic/scanner/model/ParamObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 834
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 841
    invoke-virtual {p0, p4, p1, p2}, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->getChildViewByParam(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewByParam(Landroid/view/View;II)Landroid/view/View;
    .locals 24
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v20

    monitor-enter v20

    .line 926
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v22

    aget-object v22, v22, p2

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/seuic/scanner/model/ParamObject;

    .line 929
    .local v12, "object":Lcom/seuic/scanner/model/ParamObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->HHPScannerPostCodeObjectBind(Lcom/seuic/scanner/model/ParamObject;)V

    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 933
    .local v17, "text":Landroid/widget/TextView;
    new-instance v11, Landroid/widget/AbsListView$LayoutParams;

    const/16 v19, -0x1

    const/16 v21, -0x2

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 936
    .local v11, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v17, Landroid/widget/TextView;

    .end local v17    # "text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 938
    .restart local v17    # "text":Landroid/widget/TextView;
    const/high16 v19, 0x41880000    # 17.0f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 939
    const v19, -0xffff33

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 940
    const/16 v19, 0x1e

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 941
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    move-object/from16 p1, v17

    .line 946
    .end local v11    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    if-nez v12, :cond_5

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v21

    aget-object v21, v21, p2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 948
    .local v5, "cur":I
    const-string v19, "BarcodeFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cur "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/seuic/scanner/model/ParamObject;

    .line 950
    .local v13, "object2":Lcom/seuic/scanner/model/ParamObject;
    const-string v21, "BarcodeFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "null = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v13, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v21

    aget-object v21, v21, p2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 952
    const-string v21, "BarcodeFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "position = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, " keys "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v23

    aget-object v23, v23, p2

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 944
    .end local v5    # "cur":I
    .end local v7    # "i":I
    .end local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    .end local v17    # "text":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "text":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 950
    .restart local v5    # "cur":I
    .restart local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 954
    .restart local v7    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 955
    .local v9, "key":Ljava/lang/Integer;
    const-string v21, "BarcodeFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "key = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, " object is null  "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_3

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 998
    .end local v5    # "cur":I
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/Integer;
    .end local v12    # "object":Lcom/seuic/scanner/model/ParamObject;
    .end local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    .end local v17    # "text":Landroid/widget/TextView;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 955
    .restart local v5    # "cur":I
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "key":Ljava/lang/Integer;
    .restart local v12    # "object":Lcom/seuic/scanner/model/ParamObject;
    .restart local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    .restart local v17    # "text":Landroid/widget/TextView;
    :cond_3
    const/16 v19, 0x0

    goto :goto_4

    .line 957
    .end local v9    # "key":Ljava/lang/Integer;
    :cond_4
    :try_start_1
    const-string v21, "BarcodeFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cur = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, " object is null  "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    .end local v5    # "cur":I
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    :cond_5
    const/4 v14, 0x0

    .line 962
    .local v14, "result":Ljava/lang/String;
    :try_start_2
    sget-object v19, Lcom/seuic/scanner/activity/BarcodeFragment$3;->$SwitchMap$com$seuic$scanner$model$ParamObject$ViewType:[I

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getType()Lcom/seuic/scanner/model/ParamObject$ViewType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/seuic/scanner/model/ParamObject$ViewType;->ordinal()I

    move-result v21

    aget v19, v19, v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v19, :pswitch_data_0

    .line 990
    :cond_6
    :goto_6
    const/4 v15, 0x0

    .line 991
    .local v15, "resultText":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getType()Lcom/seuic/scanner/model/ParamObject$ViewType;

    move-result-object v19

    sget-object v21, Lcom/seuic/scanner/model/ParamObject$ViewType;->DEFAULT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 992
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "|--   "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/seuic/scanner/util/FontUtil;->getSpannedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 996
    .end local v14    # "result":Ljava/lang/String;
    :goto_7
    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    .line 997
    .local v16, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 999
    return-object p1

    .line 957
    .end local v15    # "resultText":Ljava/lang/String;
    .end local v16    # "spanned":Landroid/text/Spanned;
    .restart local v5    # "cur":I
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    :cond_7
    const/16 v19, 0x0

    goto :goto_5

    .line 964
    .end local v5    # "cur":I
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "object2":Lcom/seuic/scanner/model/ParamObject;
    .restart local v14    # "result":Ljava/lang/String;
    :pswitch_0
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 965
    goto :goto_6

    .line 967
    :pswitch_1
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 968
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1100()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v21

    aget-object v14, v19, v21

    goto :goto_6

    .line 972
    :pswitch_2
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v18

    .line 973
    .local v18, "value":I
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v19

    if-eqz v19, :cond_9

    .line 974
    const/4 v7, 0x0

    .restart local v7    # "i":I
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v10, v0

    .local v10, "length":I
    :goto_8
    if-ge v7, v10, :cond_6

    .line 975
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v19

    aget v19, v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 976
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getChoices()[Ljava/lang/String;

    move-result-object v19

    aget-object v14, v19, v7

    .line 977
    goto/16 :goto_6

    .line 974
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 981
    .end local v7    # "i":I
    .end local v10    # "length":I
    :cond_9
    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getChoices()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v21

    aget-object v14, v19, v21
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 983
    goto/16 :goto_6

    .line 987
    .end local v18    # "value":I
    :catch_0
    move-exception v6

    .line 988
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 994
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v15    # "resultText":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "|--   "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/seuic/scanner/model/ParamObject;->getDescription()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":&nbsp;"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez v14, :cond_b

    const-string v14, "Error"

    .end local v14    # "result":Ljava/lang/String;
    :cond_b
    invoke-static {v14}, Lcom/seuic/scanner/util/FontUtil;->getSpannedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v15

    goto/16 :goto_7

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 847
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v1}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 849
    .local v0, "temArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    return v1

    .line 849
    .end local v0    # "temArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 865
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0xa

    .line 871
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 875
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 876
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget v2, v2, Lcom/seuic/scanner/activity/BarcodeFragment;->mWidth:I

    if-gtz v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    const/16 v3, 0x64

    iput v3, v2, Lcom/seuic/scanner/activity/BarcodeFragment;->mWidth:I

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget v2, v2, Lcom/seuic/scanner/activity/BarcodeFragment;->mWidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 881
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 882
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 886
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 897
    const/4 v0, 0x1

    return v0
.end method
