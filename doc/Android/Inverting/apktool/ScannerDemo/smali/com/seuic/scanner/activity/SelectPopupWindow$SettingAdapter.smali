.class Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/SelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    invoke-static {}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    invoke-static {}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$100()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seuic/scanner/activity/SettingItem;

    .line 133
    .local v1, "item":Lcom/seuic/scanner/activity/SettingItem;
    iget-object v4, p0, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;->this$0:Lcom/seuic/scanner/activity/SelectPopupWindow;

    invoke-static {v4}, Lcom/seuic/scanner/activity/SelectPopupWindow;->access$200(Lcom/seuic/scanner/activity/SelectPopupWindow;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/seuic/scanner/activity/SettingItem;->getIcon()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 139
    .local v2, "txt":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/seuic/scanner/activity/SettingItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-object v3
.end method
