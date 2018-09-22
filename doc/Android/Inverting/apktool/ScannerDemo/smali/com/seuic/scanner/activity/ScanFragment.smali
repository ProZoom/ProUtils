.class public Lcom/seuic/scanner/activity/ScanFragment;
.super Landroid/app/Fragment;
.source "ScanFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/seuic/scanner/views/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;,
        Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

.field private static scanlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appconfig:Lcom/seuic/scanner/util/Appconfig;

.field private btn_clear:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field currentView:Landroid/view/View;

.field private dialogPrompt:Landroid/app/AlertDialog;

.field private lst_scanlist:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/seuic/scanner/activity/ScanFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/ScanFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seuic/scanner/activity/ScanFragment;)Lcom/seuic/scanner/util/Appconfig;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/ScanFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    return-object v0
.end method

.method static synthetic access$300()Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/seuic/scanner/activity/ScanFragment;->adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    return-object v0
.end method

.method private initUI(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 90
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->currentView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->currentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->context:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->lst_scanlist:Landroid/widget/ListView;

    .line 99
    sget-object v0, Lcom/seuic/scanner/activity/ScanFragment;->adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;-><init>(Lcom/seuic/scanner/activity/ScanFragment;)V

    sput-object v0, Lcom/seuic/scanner/activity/ScanFragment;->adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->lst_scanlist:Landroid/widget/ListView;

    sget-object v1, Lcom/seuic/scanner/activity/ScanFragment;->adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->currentView:Landroid/view/View;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->btn_clear:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->btn_clear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->currentView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public doGetDecode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "barcode"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->isClear()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 165
    :cond_0
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit16 v1, v2, -0x3e8

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 167
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/Appconfig;->isShowType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->adapter:Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/seuic/scanner/activity/ScanFragment$ListAdapter;->notifyDataSetChanged()V

    .line 176
    sget-object v2, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/seuic/scanner/activity/ScanFragment;->lst_scanlist:Landroid/widget/ListView;

    sget-object v3, Lcom/seuic/scanner/activity/ScanFragment;->scanlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 179
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/seuic/scanner/activity/ScanFragment$1;

    invoke-direct {v2, p0}, Lcom/seuic/scanner/activity/ScanFragment$1;-><init>(Lcom/seuic/scanner/activity/ScanFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    .line 202
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 203
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/seuic/scanner/activity/ScanFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-direct {p0, p1}, Lcom/seuic/scanner/activity/ScanFragment;->initUI(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->dialogPrompt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/seuic/scanner/activity/ScanFragment;->receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    .line 84
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setMainShown(Z)V

    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/seuic/scanner/util/AppCache;->setMainShown(Z)V

    .line 66
    new-instance v1, Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    invoke-direct {v1, p0}, Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;-><init>(Lcom/seuic/scanner/activity/ScanFragment;)V

    iput-object v1, p0, Lcom/seuic/scanner/activity/ScanFragment;->receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/seuic/scanner/activity/ScanFragment;->appconfig:Lcom/seuic/scanner/util/Appconfig;

    invoke-virtual {v1}, Lcom/seuic/scanner/util/Appconfig;->getBcName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/seuic/scanner/activity/ScanFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/seuic/scanner/activity/ScanFragment;->receiver:Lcom/seuic/scanner/activity/ScanFragment$ScanReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 71
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/seuic/scanner/activity/ScanFragment;->btn_clear:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/seuic/scanner/activity/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
