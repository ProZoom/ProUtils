.class public Lcom/seuic/scanner/activity/BarcodeFragment;
.super Landroid/app/Fragment;
.source "BarcodeFragment.java"

# interfaces
.implements Lcom/seuic/scanner/views/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/activity/BarcodeFragment$3;,
        Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;,
        Lcom/seuic/scanner/activity/BarcodeFragment$ChildClickListener;,
        Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;
    }
.end annotation


# static fields
.field private static HHPScanAustralienObject:Lcom/seuic/scanner/model/ParamObject;

.field private static HHPScanJapaneseObject:Lcom/seuic/scanner/model/ParamObject;

.field private static HHPScanPlanetObject:Lcom/seuic/scanner/model/ParamObject;

.field private static HHPScanPostnetObject:Lcom/seuic/scanner/model/ParamObject;

.field private static adapter:Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

.field private static childObject:Lcom/seuic/scanner/model/ParamObject;

.field private static inputText:Landroid/widget/EditText;

.field static onshowing:Z

.field private static switchString:[Ljava/lang/String;


# instance fields
.field private clickListener:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

.field dialog:Landroid/app/ProgressDialog;

.field dialogSet:Landroid/app/AlertDialog;

.field private explst_settings:Landroid/widget/ExpandableListView;

.field private group:[Ljava/lang/Object;

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private mBindMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/seuic/scanner/model/ParamObject;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mScanner:Lcom/seuic/scanner/Scanner;

.field mWidth:I

.field resources:Landroid/content/res/Resources;

.field scnManager:Lcom/seuic/scanner/util/ScannerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPostnetObject:Lcom/seuic/scanner/model/ParamObject;

    .line 78
    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPlanetObject:Lcom/seuic/scanner/model/ParamObject;

    .line 79
    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanJapaneseObject:Lcom/seuic/scanner/model/ParamObject;

    .line 80
    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanAustralienObject:Lcom/seuic/scanner/model/ParamObject;

    .line 88
    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->switchString:[Ljava/lang/String;

    .line 1003
    const/4 v0, 0x0

    sput-boolean v0, Lcom/seuic/scanner/activity/BarcodeFragment;->onshowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mBindMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    .line 139
    new-instance v0, Lcom/seuic/scanner/activity/BarcodeFragment$2;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/activity/BarcodeFragment$2;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->handler:Landroid/os/Handler;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupList:Ljava/util/List;

    .line 1090
    return-void
.end method

.method private HHPScannerPostCodeObjectInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_0

    .line 792
    sput-object v1, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPostnetObject:Lcom/seuic/scanner/model/ParamObject;

    .line 793
    sput-object v1, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPlanetObject:Lcom/seuic/scanner/model/ParamObject;

    .line 794
    sput-object v1, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanJapaneseObject:Lcom/seuic/scanner/model/ParamObject;

    .line 795
    sput-object v1, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanAustralienObject:Lcom/seuic/scanner/model/ParamObject;

    .line 797
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/seuic/scanner/activity/BarcodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->bindParams()V

    return-void
.end method

.method static synthetic access$100()Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->adapter:Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/seuic/scanner/model/ParamObject;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanAustralienObject:Lcom/seuic/scanner/model/ParamObject;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanAustralienObject:Lcom/seuic/scanner/model/ParamObject;

    return-object p0
.end method

.method static synthetic access$102(Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;)Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->adapter:Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    return-object p0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->switchString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/seuic/scanner/model/ParamObject;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->childObject:Lcom/seuic/scanner/model/ParamObject;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->childObject:Lcom/seuic/scanner/model/ParamObject;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->inputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->inputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/seuic/scanner/activity/BarcodeFragment;)Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->clickListener:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->explst_settings:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/seuic/scanner/activity/BarcodeFragment;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->group:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/seuic/scanner/activity/BarcodeFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mBindMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/seuic/scanner/activity/BarcodeFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seuic/scanner/activity/BarcodeFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Lcom/seuic/scanner/model/ParamObject;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPostnetObject:Lcom/seuic/scanner/model/ParamObject;

    return-object v0
.end method

.method static synthetic access$702(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPostnetObject:Lcom/seuic/scanner/model/ParamObject;

    return-object p0
.end method

.method static synthetic access$800()Lcom/seuic/scanner/model/ParamObject;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPlanetObject:Lcom/seuic/scanner/model/ParamObject;

    return-object v0
.end method

.method static synthetic access$802(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanPlanetObject:Lcom/seuic/scanner/model/ParamObject;

    return-object p0
.end method

.method static synthetic access$900()Lcom/seuic/scanner/model/ParamObject;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanJapaneseObject:Lcom/seuic/scanner/model/ParamObject;

    return-object v0
.end method

.method static synthetic access$902(Lcom/seuic/scanner/model/ParamObject;)Lcom/seuic/scanner/model/ParamObject;
    .locals 0
    .param p0, "x0"    # Lcom/seuic/scanner/model/ParamObject;

    .prologue
    .line 63
    sput-object p0, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScanJapaneseObject:Lcom/seuic/scanner/model/ParamObject;

    return-object p0
.end method

.method private addItem(ILandroid/util/SparseArray;)V
    .locals 11
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v10, 0x4

    const/4 v1, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "description":Ljava/lang/String;
    const/4 v4, 0x0

    .line 434
    .local v4, "type":Lcom/seuic/scanner/model/ParamObject$ViewType;
    const/4 v5, 0x0

    .line 435
    .local v5, "choices":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 436
    .local v6, "interval":[I
    const/4 v3, 0x0

    .line 438
    .local v3, "paramValue":I
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 730
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SWITCH:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 734
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/seuic/scanner/util/ScannerManager;->getParams(Landroid/content/Context;I)I

    move-result v3

    .line 735
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "description":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 736
    .restart local v2    # "description":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v6, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_2

    .line 743
    sparse-switch p1, :sswitch_data_1

    .line 758
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mBindMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/seuic/scanner/model/ParamObject;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/seuic/scanner/model/ParamObject;-><init>(ILjava/lang/String;ILcom/seuic/scanner/model/ParamObject$ViewType;[Ljava/lang/String;[I)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-void

    .line 444
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 450
    :sswitch_0
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_4

    .line 452
    :cond_3
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 453
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 454
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_0

    .restart local v6    # "interval":[I
    goto :goto_1

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_0

    .line 456
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SWITCH:Lcom/seuic/scanner/model/ParamObject$ViewType;

    goto :goto_1

    .line 460
    :sswitch_1
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 461
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE965Scanner;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 463
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 467
    :sswitch_2
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 468
    new-array v5, v10, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "auto"

    aput-object v0, v5, v8

    const-string v0, "low"

    aput-object v0, v5, v9

    const-string v0, "mid"

    aput-object v0, v5, v7

    const-string v0, "high"

    aput-object v0, v5, v1

    .line 469
    .restart local v5    # "choices":[Ljava/lang/String;
    new-array v6, v10, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2

    .line 470
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 472
    :sswitch_3
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 473
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_0

    .line 475
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_3

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 479
    :sswitch_4
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 480
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v0

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_0

    .line 482
    :cond_5
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_4

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 486
    :sswitch_5
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 487
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v0

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_0

    .line 490
    :cond_6
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_5

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 495
    :sswitch_6
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 496
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v0

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_7

    .line 497
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_6

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 499
    :cond_7
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_7

    .line 501
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 504
    :sswitch_7
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 505
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 506
    goto/16 :goto_1

    .line 508
    :sswitch_8
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 509
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 510
    goto/16 :goto_1

    .line 512
    :sswitch_9
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 513
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 514
    goto/16 :goto_1

    .line 517
    :sswitch_a
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 518
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_9

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 524
    :cond_9
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 526
    goto/16 :goto_1

    .line 528
    :sswitch_b
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 529
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/UE966Scanner;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE965Scanner;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/EM1350Scanner;

    if-eqz v0, :cond_b

    .line 532
    :cond_a
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_8

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 533
    :cond_b
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_c

    .line 534
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_9

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 536
    :cond_c
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_a

    .line 538
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 540
    :sswitch_c
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 541
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_d

    .line 542
    new-array v5, v7, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "48"

    aput-object v0, v5, v8

    const-string v0, "35"

    aput-object v0, v5, v9

    .line 543
    .restart local v5    # "choices":[Ljava/lang/String;
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_b

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 544
    :cond_d
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE965Scanner;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/EM1350Scanner;

    if-eqz v0, :cond_f

    .line 546
    :cond_e
    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "10"

    aput-object v0, v5, v8

    const-string v0, "35"

    aput-object v0, v5, v9

    const-string v0, "47"

    aput-object v0, v5, v7

    .line 547
    .restart local v5    # "choices":[Ljava/lang/String;
    new-array v6, v1, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_c

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 549
    :cond_f
    new-array v5, v7, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "37"

    aput-object v0, v5, v8

    const-string v0, "47"

    aput-object v0, v5, v9

    .line 550
    .restart local v5    # "choices":[Ljava/lang/String;
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_d

    .line 552
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 554
    :sswitch_d
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 555
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_10

    .line 556
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_e

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 558
    :cond_10
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_f

    .line 560
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 562
    :sswitch_e
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 563
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_10

    .line 564
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 567
    :sswitch_f
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 568
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_12

    .line 569
    :cond_11
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_11

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 571
    :cond_12
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_12

    .line 573
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 575
    :sswitch_10
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_13

    .line 576
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 577
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 579
    :cond_13
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SWITCH:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 581
    goto/16 :goto_1

    .line 584
    :sswitch_11
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 585
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_14

    .line 586
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_13

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 587
    :cond_14
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_15

    .line 588
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_14

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 589
    :cond_15
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/UE966Scanner;

    if-eqz v0, :cond_16

    .line 590
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_15

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 592
    :cond_16
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_16

    .line 594
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 596
    :sswitch_12
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_17

    .line 597
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 598
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 599
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_17

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 601
    :cond_17
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SWITCH:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 603
    goto/16 :goto_1

    .line 606
    :sswitch_13
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 607
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_18

    .line 608
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_18

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 609
    :cond_18
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_1a

    .line 611
    :cond_19
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_19

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 612
    :cond_1a
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_1b

    .line 613
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1a

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 615
    :cond_1b
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1b

    .line 617
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 620
    :sswitch_14
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 621
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_1c

    .line 622
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1c

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 623
    :cond_1c
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_1d

    .line 624
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1d

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 625
    :cond_1d
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/UE966Scanner;

    if-eqz v0, :cond_1e

    .line 626
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1e

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 628
    :cond_1e
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_1f

    .line 630
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 633
    :sswitch_15
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 634
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_1f

    .line 635
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_20

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 637
    :cond_1f
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_21

    .line 639
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 642
    :sswitch_16
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 643
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_20

    .line 644
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_22

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 645
    :cond_20
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_21

    .line 646
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_23

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 648
    :cond_21
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_24

    .line 650
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 653
    :sswitch_17
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 654
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_22

    .line 655
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_25

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 656
    :cond_22
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_23

    .line 657
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_26

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 658
    :cond_23
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/UE966Scanner;

    if-eqz v0, :cond_24

    .line 659
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_27

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 661
    :cond_24
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_28

    .line 663
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 668
    :sswitch_18
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 669
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_25

    .line 670
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_29

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 671
    :cond_25
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_26

    .line 672
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2a

    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 674
    :cond_26
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2b

    .line 676
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 679
    :sswitch_19
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 680
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2c

    .line 681
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 686
    :sswitch_1a
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 687
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2d

    .line 688
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 691
    :sswitch_1b
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 692
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2e

    .line 693
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 696
    :sswitch_1c
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 697
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_2f

    .line 698
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 701
    :sswitch_1d
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 702
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_30

    .line 703
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 706
    :sswitch_1e
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 707
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_31

    .line 708
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 711
    :sswitch_1f
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 712
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_32

    .line 713
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 716
    :sswitch_20
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->NUMERICTEXT:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 717
    new-array v6, v7, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_33

    .line 718
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 720
    :sswitch_21
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 721
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "User"

    aput-object v0, v5, v8

    const-string v0, "Passport"

    aput-object v0, v5, v9

    const-string v0, "ISBN"

    aput-object v0, v5, v7

    const-string v0, "Price Field"

    aput-object v0, v5, v1

    const-string v0, "MICR E-13B"

    aput-object v0, v5, v10

    .line 722
    .restart local v5    # "choices":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v6, v0, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_34

    .line 723
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 725
    :sswitch_22
    sget-object v4, Lcom/seuic/scanner/model/ParamObject$ViewType;->SINGLECHOICE:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 726
    new-array v5, v10, [Ljava/lang/String;

    .end local v5    # "choices":[Ljava/lang/String;
    const-string v0, "Only Aimer"

    aput-object v0, v5, v8

    const-string v0, "Only Led"

    aput-object v0, v5, v9

    const-string v0, "No Aimer and Led"

    aput-object v0, v5, v7

    const-string v0, "Both Aimer and Led"

    aput-object v0, v5, v1

    .line 727
    .restart local v5    # "choices":[Ljava/lang/String;
    new-array v6, v10, [I

    .end local v6    # "interval":[I
    fill-array-data v6, :array_35

    .line 728
    .restart local v6    # "interval":[I
    goto/16 :goto_1

    .line 747
    :sswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    goto/16 :goto_2

    .line 750
    :sswitch_24
    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 752
    goto/16 :goto_2

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x151
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 448
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_c
        0x3 -> :sswitch_d
        0x4 -> :sswitch_e
        0x7 -> :sswitch_22
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_0
        0x10c -> :sswitch_9
        0x10d -> :sswitch_a
        0x10e -> :sswitch_a
        0x122 -> :sswitch_6
        0x123 -> :sswitch_6
        0x126 -> :sswitch_3
        0x136 -> :sswitch_11
        0x137 -> :sswitch_11
        0x138 -> :sswitch_12
        0x142 -> :sswitch_13
        0x143 -> :sswitch_13
        0x152 -> :sswitch_f
        0x153 -> :sswitch_f
        0x155 -> :sswitch_10
        0x162 -> :sswitch_16
        0x163 -> :sswitch_16
        0x172 -> :sswitch_15
        0x173 -> :sswitch_15
        0x192 -> :sswitch_14
        0x193 -> :sswitch_14
        0x202 -> :sswitch_17
        0x203 -> :sswitch_17
        0x222 -> :sswitch_1d
        0x223 -> :sswitch_1d
        0x224 -> :sswitch_7
        0x232 -> :sswitch_1b
        0x233 -> :sswitch_1b
        0x234 -> :sswitch_7
        0x235 -> :sswitch_8
        0x242 -> :sswitch_18
        0x243 -> :sswitch_18
        0x252 -> :sswitch_18
        0x253 -> :sswitch_18
        0x2b2 -> :sswitch_19
        0x2b3 -> :sswitch_19
        0x2c2 -> :sswitch_1a
        0x2c3 -> :sswitch_1a
        0x2d2 -> :sswitch_1a
        0x2d3 -> :sswitch_1a
        0x2e2 -> :sswitch_1c
        0x2e3 -> :sswitch_1c
        0x2f2 -> :sswitch_1e
        0x2f3 -> :sswitch_1e
        0x302 -> :sswitch_1f
        0x303 -> :sswitch_1f
        0x312 -> :sswitch_20
        0x313 -> :sswitch_20
        0x332 -> :sswitch_21
    .end sparse-switch

    .line 743
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_23
        0x3 -> :sswitch_23
        0x135 -> :sswitch_24
    .end sparse-switch

    .line 454
    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 463
    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 469
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 475
    :array_3
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 482
    :array_4
    .array-data 4
        0x1
        0xa
    .end array-data

    .line 490
    :array_5
    .array-data 4
        0x5
        0x63
    .end array-data

    .line 497
    :array_6
    .array-data 4
        0x0
        0x50
    .end array-data

    .line 499
    :array_7
    .array-data 4
        0x0
        0x37
    .end array-data

    .line 532
    :array_8
    .array-data 4
        0x0
        0x63
    .end array-data

    .line 534
    :array_9
    .array-data 4
        0x1
        0x7530
    .end array-data

    .line 536
    :array_a
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 543
    :array_b
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 547
    :array_c
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 550
    :array_d
    .array-data 4
        0x5
        0x6
    .end array-data

    .line 556
    :array_e
    .array-data 4
        0x0
        0x7530
    .end array-data

    .line 558
    :array_f
    .array-data 4
        0x0
        0x63
    .end array-data

    .line 563
    :array_10
    .array-data 4
        0x1
        0x4
    .end array-data

    .line 569
    :array_11
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 571
    :array_12
    .array-data 4
        0x4
        0x37
    .end array-data

    .line 586
    :array_13
    .array-data 4
        0x0
        0x30
    .end array-data

    .line 588
    :array_14
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 590
    :array_15
    .array-data 4
        0x1
        0x37
    .end array-data

    .line 592
    :array_16
    .array-data 4
        0x2
        0x37
    .end array-data

    .line 599
    :array_17
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 608
    :array_18
    .array-data 4
        0x0
        0x50
    .end array-data

    .line 611
    :array_19
    .array-data 4
        0x4
        0x37
    .end array-data

    .line 613
    :array_1a
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 615
    :array_1b
    .array-data 4
        0x0
        0x37
    .end array-data

    .line 622
    :array_1c
    .array-data 4
        0x2
        0x3c
    .end array-data

    .line 624
    :array_1d
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 626
    :array_1e
    .array-data 4
        0x1
        0x37
    .end array-data

    .line 628
    :array_1f
    .array-data 4
        0x5
        0x37
    .end array-data

    .line 635
    :array_20
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 637
    :array_21
    .array-data 4
        0x0
        0x37
    .end array-data

    .line 644
    :array_22
    .array-data 4
        0x2
        0x50
    .end array-data

    .line 646
    :array_23
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 648
    :array_24
    .array-data 4
        0x0
        0x37
    .end array-data

    .line 655
    :array_25
    .array-data 4
        0x4
        0x30
    .end array-data

    .line 657
    :array_26
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 659
    :array_27
    .array-data 4
        0x1
        0x37
    .end array-data

    .line 661
    :array_28
    .array-data 4
        0x4
        0x37
    .end array-data

    .line 670
    :array_29
    .array-data 4
        0x4
        0x50
    .end array-data

    .line 672
    :array_2a
    .array-data 4
        0x1
        0x50
    .end array-data

    .line 674
    :array_2b
    .array-data 4
        0x0
        0x37
    .end array-data

    .line 680
    :array_2c
    .array-data 4
        0x1
        0x12c
    .end array-data

    .line 687
    :array_2d
    .array-data 4
        0x1
        0xabe
    .end array-data

    .line 692
    :array_2e
    .array-data 4
        0x1
        0xc5e
    .end array-data

    .line 697
    :array_2f
    .array-data 4
        0x1
        0x96
    .end array-data

    .line 702
    :array_30
    .array-data 4
        0x0
        0x1bb1
    .end array-data

    .line 707
    :array_31
    .array-data 4
        0x1
        0xef8
    .end array-data

    .line 712
    :array_32
    .array-data 4
        0x0
        0x800
    .end array-data

    .line 717
    :array_33
    .array-data 4
        0x1
        0x3c
    .end array-data

    .line 722
    :array_34
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    .line 727
    :array_35
    .array-data 4
        0x1
        0x2
        0x0
        0x3
    .end array-data
.end method

.method private bindParams()V
    .locals 5

    .prologue
    .line 152
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mBindMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "BarcodeFragment"

    const-string v3, "groupMap clear"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 169
    .local v0, "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    const/4 v1, 0x6

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    const/16 v1, 0xa

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    const/16 v1, 0x9

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    const/16 v1, 0xb

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    const/16 v1, 0xd

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    const/16 v1, 0xe

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 185
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x121

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    const/16 v1, 0x122

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    const/16 v1, 0x123

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    const/16 v1, 0x125

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    const/16 v1, 0x124

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    const/16 v1, 0x126

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07002d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 195
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x101

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    const/16 v1, 0x102

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    const/16 v1, 0x103

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    const/16 v1, 0x104

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    const/16 v1, 0x105

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    const/16 v1, 0x106

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    const/16 v1, 0x107

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    const/16 v1, 0x108

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    const/16 v1, 0x109

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    const/16 v1, 0x10a

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    const/16 v1, 0x10b

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    const/16 v1, 0x10c

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    const/16 v1, 0x10d

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    const/16 v1, 0x10e

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    const/16 v1, 0x10f

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    const/16 v1, 0x110

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    const/16 v1, 0x111

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    const/16 v1, 0x113

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    const/16 v1, 0x112

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 218
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x131

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    const/16 v1, 0x132

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    const/16 v1, 0x133

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    const/16 v1, 0x134

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    const/16 v1, 0x135

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    const/16 v1, 0x136

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    const/16 v1, 0x137

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    const/16 v1, 0x138

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    const/16 v1, 0x139

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 231
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x141

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    const/16 v1, 0x142

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    const/16 v1, 0x143

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 237
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 238
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x151

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    const/16 v1, 0x152

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    const/16 v1, 0x153

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    const/16 v1, 0x154

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    const/16 v1, 0x155

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 247
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x161

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    const/16 v1, 0x162

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    const/16 v1, 0x163

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 253
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 254
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x171

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    const/16 v1, 0x172

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    const/16 v1, 0x173

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 261
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x181

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 265
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 266
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x191

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    const/16 v1, 0x192

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    const/16 v1, 0x193

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    const/16 v1, 0x194

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 273
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 274
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x201

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    const/16 v1, 0x202

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    const/16 v1, 0x203

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 280
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x211

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    const/16 v1, 0x213

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    const/16 v1, 0x212

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    const/16 v1, 0x214

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070043

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 288
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 289
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x221

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    const/16 v1, 0x222

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    const/16 v1, 0x223

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    const/16 v1, 0x224

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    const/16 v1, 0x225

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 298
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x231

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    const/16 v1, 0x232

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    const/16 v1, 0x233

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    const/16 v1, 0x234

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    const/16 v1, 0x235

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07004b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 306
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 307
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x241

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    const/16 v1, 0x242

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    const/16 v1, 0x243

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07004e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 313
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 314
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x251

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    const/16 v1, 0x252

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    const/16 v1, 0x253

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 320
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 321
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x261

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    const/16 v1, 0x269

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    const/16 v1, 0x262

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    const/16 v1, 0x26a

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    const/16 v1, 0x263

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    const/16 v1, 0x264

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    const/16 v1, 0x265

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    const/16 v1, 0x266

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    const/16 v1, 0x267

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    const/16 v1, 0x268

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 335
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x271

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07005b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 340
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x2b1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    const/16 v1, 0x2b2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    const/16 v1, 0x2b3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 346
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 347
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x341

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    const/16 v1, 0x342

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    const/16 v1, 0x343

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    const/16 v1, 0x344

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070060

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 355
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x2c1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    const/16 v1, 0x2c2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    const/16 v1, 0x2c3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070062

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 361
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 362
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x2d1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    const/16 v1, 0x2d2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    const/16 v1, 0x2d3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070063

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 368
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 369
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x2e1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    const/16 v1, 0x2e2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    const/16 v1, 0x2e3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070065

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 377
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x2f1

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    const/16 v1, 0x2f2

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    const/16 v1, 0x2f3

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    const/16 v1, 0x2f4

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070066

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 385
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x301

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    const/16 v1, 0x302

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    const/16 v1, 0x303

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 391
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 392
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x311

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    const/16 v1, 0x312

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    const/16 v1, 0x313

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    const/16 v1, 0x314

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f070069

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 399
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 400
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x331

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    const/16 v1, 0x332

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 405
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 406
    .restart local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x361

    iget-object v3, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v4, 0x7f07006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07006c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/seuic/scanner/activity/BarcodeFragment;->groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 409
    iget-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->group:[Ljava/lang/Object;

    .line 410
    monitor-exit v2

    .line 411
    return-void

    .line 410
    .end local v0    # "tempMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private groupBind(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 415
    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v5}, Lcom/seuic/scanner/util/ScannerManager;->getAllParams()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 416
    .local v2, "mapParam":Landroid/util/SparseIntArray;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 417
    .local v4, "temp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 418
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 419
    .local v1, "key":I
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 420
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    invoke-direct {p0, v1, p2}, Lcom/seuic/scanner/activity/BarcodeFragment;->addItem(ILandroid/util/SparseArray;)V

    .line 417
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "key":I
    :cond_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 425
    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v5, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->groupList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_2
    return-void
.end method


# virtual methods
.method loadParams()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    .line 127
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    new-instance v0, Lcom/seuic/scanner/activity/BarcodeFragment$1;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/activity/BarcodeFragment$1;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/BarcodeFragment$1;->start()V

    .line 137
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "barcodeView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mContext:Landroid/content/Context;

    .line 108
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/seuic/scanner/util/ScannerManager;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    .line 109
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    .line 110
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->scnManager:Lcom/seuic/scanner/util/ScannerManager;

    invoke-virtual {v2}, Lcom/seuic/scanner/util/ScannerManager;->getScanner()Lcom/seuic/scanner/Scanner;

    move-result-object v2

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mScanner:Lcom/seuic/scanner/Scanner;

    .line 111
    iget-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f080000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/seuic/scanner/activity/BarcodeFragment;->switchString:[Ljava/lang/String;

    .line 113
    const v2, 0x7f0a0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->explst_settings:Landroid/widget/ExpandableListView;

    .line 116
    new-instance v2, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    invoke-direct {v2, p0}, Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;-><init>(Lcom/seuic/scanner/activity/BarcodeFragment;)V

    iput-object v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->clickListener:Lcom/seuic/scanner/activity/BarcodeFragment$ClickListener;

    .line 118
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, "dirBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->mWidth:I

    .line 121
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 815
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 816
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialogSet:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 806
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 807
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 808
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->resources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->switchString:[Ljava/lang/String;

    .line 774
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setScanEnable(Z)V

    .line 776
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seuic/scanner/activity/BarcodeFragment;->dialog:Landroid/app/ProgressDialog;

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->loadParams()V

    .line 782
    invoke-direct {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScannerPostCodeObjectInit()V

    .line 784
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->adapter:Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    if-eqz v0, :cond_1

    .line 785
    sget-object v0, Lcom/seuic/scanner/activity/BarcodeFragment;->adapter:Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;

    invoke-virtual {v0}, Lcom/seuic/scanner/activity/BarcodeFragment$ExpandAdapter;->notifyDataSetChanged()V

    .line 787
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 788
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 764
    if-eqz p1, :cond_0

    .line 765
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 767
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->loadParams()V

    .line 1280
    invoke-direct {p0}, Lcom/seuic/scanner/activity/BarcodeFragment;->HHPScannerPostCodeObjectInit()V

    .line 1281
    return-void
.end method
