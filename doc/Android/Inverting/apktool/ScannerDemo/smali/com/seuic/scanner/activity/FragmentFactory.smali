.class public Lcom/seuic/scanner/activity/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# static fields
.field private static fragments:[Landroid/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/Fragment;

    const/4 v1, 0x0

    new-instance v2, Lcom/seuic/scanner/activity/ScanFragment;

    invoke-direct {v2}, Lcom/seuic/scanner/activity/ScanFragment;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/seuic/scanner/activity/BarcodeFragment;

    invoke-direct {v2}, Lcom/seuic/scanner/activity/BarcodeFragment;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/seuic/scanner/activity/SettingsFragment;

    invoke-direct {v2}, Lcom/seuic/scanner/activity/SettingsFragment;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/seuic/scanner/activity/FragmentFactory;->fragments:[Landroid/app/Fragment;

    return-void
.end method

.method public static getFragmentByIndex(I)Landroid/app/Fragment;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, "fragment":Landroid/app/Fragment;
    packed-switch p0, :pswitch_data_0

    .line 24
    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    sget-object v1, Lcom/seuic/scanner/activity/FragmentFactory;->fragments:[Landroid/app/Fragment;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 16
    goto :goto_0

    .line 18
    :pswitch_1
    sget-object v1, Lcom/seuic/scanner/activity/FragmentFactory;->fragments:[Landroid/app/Fragment;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 19
    goto :goto_0

    .line 21
    :pswitch_2
    sget-object v1, Lcom/seuic/scanner/activity/FragmentFactory;->fragments:[Landroid/app/Fragment;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a000f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
