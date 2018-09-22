.class public Lcom/seuic/scanner/activity/SelectPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;,
        Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;
    }
.end annotation


# static fields
.field private static mContext:Landroid/app/Activity;

.field private static mainIntent:Landroid/content/Intent;

.field private static scnManager:Lcom/seuic/scanner/util/ScannerManager;

.field private static settingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/seuic/scanner/activity/SettingItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lst_settings:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 55
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 57
    sput-object p1, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    .line 58
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v3

    sput-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 60
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/seuic/scanner/activity/SettingItem;

    const v6, 0x7f020017

    sget-object v7, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/seuic/scanner/activity/SettingItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/seuic/scanner/activity/SettingItem;

    const v6, 0x7f020016

    sget-object v7, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07007d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/seuic/scanner/activity/SettingItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mainIntent:Landroid/content/Intent;

    .line 64
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mainIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mainIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mMenuView:Landroid/view/View;

    .line 71
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 72
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .local v2, "sWidth":I
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mMenuView:Landroid/view/View;

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->lst_settings:Landroid/widget/ListView;

    .line 77
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->lst_settings:Landroid/widget/ListView;

    new-instance v4, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;

    invoke-direct {v4, p0}, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingAdapter;-><init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->lst_settings:Landroid/widget/ListView;

    new-instance v4, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;

    invoke-direct {v4, p0}, Lcom/seuic/scanner/activity/SelectPopupWindow$SettingItemClicklistener;-><init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setContentView(Landroid/view/View;)V

    .line 83
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setWidth(I)V

    .line 85
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setHeight(I)V

    .line 87
    invoke-virtual {p0, v10}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setFocusable(Z)V

    .line 89
    const v3, 0x7f090002

    invoke-virtual {p0, v3}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setAnimationStyle(I)V

    .line 91
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 93
    .local v1, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v1}, Lcom/seuic/scanner/activity/SelectPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v3, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mMenuView:Landroid/view/View;

    new-instance v4, Lcom/seuic/scanner/activity/SelectPopupWindow$1;

    invoke-direct {v4, p0}, Lcom/seuic/scanner/activity/SelectPopupWindow$1;-><init>(Lcom/seuic/scanner/activity/SelectPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/seuic/scanner/activity/SelectPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SelectPopupWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seuic/scanner/activity/SelectPopupWindow;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/SelectPopupWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/seuic/scanner/util/ScannerManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    return-object v0
.end method


# virtual methods
.method public refresh()V
    .locals 6

    .prologue
    .line 146
    sget-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/seuic/scanner/activity/SettingItem;

    const v3, 0x7f020017

    sget-object v4, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/seuic/scanner/activity/SettingItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/seuic/scanner/activity/SelectPopupWindow;->settingMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/seuic/scanner/activity/SettingItem;

    const v3, 0x7f020016

    sget-object v4, Lcom/seuic/scanner/activity/SelectPopupWindow;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/seuic/scanner/activity/SettingItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method
