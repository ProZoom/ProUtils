.class Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;
.super Ljava/lang/Object;
.source "BarcodeFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/BarcodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/BarcodeFragment;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDialog(Lcom/seuic/scanner/model/ParamObject;)Landroid/app/AlertDialog;
    .locals 8
    .param p1, "object"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    const/4 v6, -0x1

    const v7, 0x7f070070

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1302(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1032
    sget-object v3, Lcom/seuic/scanner/activity/BarcodeFragment$3;->$SwitchMap$com$seuic$scanner$model$ParamObject$ViewType:[I

    invoke-virtual {p1}, Lcom/seuic/scanner/model/ParamObject;->getType()Lcom/seuic/scanner/model/ParamObject$ViewType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1077
    :goto_0
    return-object v0

    .line 1035
    :pswitch_0
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1302(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1036
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1300()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1300()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1300()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1043
    goto :goto_0

    .line 1046
    :pswitch_1
    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v4

    iput v4, v3, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    .line 1047
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1100()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v5

    iget v5, v5, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    iget-object v6, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1052
    goto/16 :goto_0

    .line 1055
    :pswitch_2
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1056
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v3

    array-length v2, v3

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1057
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seuic/scanner/model/ParamObject;->getInterval()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1059
    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v3

    iput v1, v3, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    .line 1067
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v4}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getChoices()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v5

    iget v5, v5, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    iget-object v6, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v6}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v4, v4, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v5}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1073
    goto/16 :goto_0

    .line 1056
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1064
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v4

    iput v4, v3, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->selectIndex:I

    .line 1065
    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v3}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    move-result-object v3

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seuic/scanner/model/ParamObject;->getValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;->access$1502(Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;I)I

    goto :goto_2

    .line 1032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 1011
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v2}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/model/ParamObject;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1202(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;

    .line 1013
    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/model/ParamObject;->getId()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seuic/scanner/util/Appconfig;->isContinue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v1, v1, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1025
    :cond_0
    :goto_0
    return v3

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-static {}, Lcom/seuic/scanner/activity/BarcodeFragment;->access$1200()Lcom/seuic/scanner/model/ParamObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->getDialog(Lcom/seuic/scanner/model/ParamObject;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    .line 1023
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;->this$0:Lcom/seuic/scanner/activity/BarcodeFragment;

    iget-object v0, v0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
