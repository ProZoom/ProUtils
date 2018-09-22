.class public Lcom/seuic/scanner/util/ScannerManager;
.super Ljava/lang/Object;
.source "ScannerManager.java"


# static fields
.field private static final COMMEN_CONFIG_DIRECTORY:Ljava/lang/String;

.field private static configFullPath:Ljava/lang/String;

.field static mBindValue:Landroid/util/SparseIntArray;

.field private static mContext:Landroid/content/Context;

.field static mObserver:Lcom/seuic/scanner/util/ScreenObserver;

.field static mScanner:Lcom/seuic/scanner/Scanner;

.field private static mScannerLocker:Ljava/lang/Object;

.field static manager:Lcom/seuic/scanner/util/ScannerManager;

.field static resid:I

.field static scnUtils:Lcom/seuic/scanner/util/SCNParamsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "seuic_scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->COMMEN_CONFIG_DIRECTORY:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/seuic/scanner/util/ScannerManager;->initScanner(Landroid/content/Context;)Lcom/seuic/scanner/Scanner;

    .line 54
    new-instance v0, Lcom/seuic/scanner/util/ScreenObserver;

    invoke-direct {v0, p1}, Lcom/seuic/scanner/util/ScreenObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->mObserver:Lcom/seuic/scanner/util/ScreenObserver;

    .line 55
    return-void
.end method

.method private static HHPScannerPostCodeSet(II)Z
    .locals 6
    .param p0, "num"    # I
    .param p1, "value"    # I

    .prologue
    const/16 v5, 0x264

    const/16 v4, 0x262

    const/16 v3, 0x261

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v2, v2, Lcom/seuic/scanner/HHPScanner;

    if-eqz v2, :cond_1

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v5, :cond_0

    const/16 v2, 0x265

    if-ne p0, v2, :cond_1

    .line 219
    :cond_0
    if-ne p1, v0, :cond_2

    .line 220
    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    const/16 v3, 0x265

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    :cond_1
    :goto_0
    return v0

    .line 225
    :cond_2
    if-nez p1, :cond_1

    move v0, v1

    .line 226
    goto :goto_0
.end method

.method public static availParam(I)Z
    .locals 2
    .param p0, "num"    # I

    .prologue
    const/4 v1, -0x1

    .line 288
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->getAllParams()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/ScannerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->manager:Lcom/seuic/scanner/util/ScannerManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/seuic/scanner/util/ScannerManager;

    invoke-direct {v0, p0}, Lcom/seuic/scanner/util/ScannerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->manager:Lcom/seuic/scanner/util/ScannerManager;

    .line 65
    :cond_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->manager:Lcom/seuic/scanner/util/ScannerManager;

    return-object v0
.end method

.method public static getParams(I)I
    .locals 3
    .param p0, "num"    # I

    .prologue
    const/4 v2, -0x1

    .line 302
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 303
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v1, p0}, Lcom/seuic/scanner/Scanner;->getParams(I)I

    move-result v0

    .line 304
    .local v0, "value":I
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    .end local v0    # "value":I
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method private getScanner(Landroid/content/Context;)Lcom/seuic/scanner/Scanner;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 194
    const-class v0, Lcom/seuic/scanner/ScannerFactory;

    .line 196
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "getScannerNoStopService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 197
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 198
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seuic/scanner/Scanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ScannerManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 202
    goto :goto_0
.end method

.method private static getXmlResID()I
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE955Scanner;

    if-eqz v0, :cond_0

    .line 324
    const v0, 0x7f050004

    .line 339
    :goto_0
    return v0

    .line 325
    :cond_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/UE966Scanner;

    if-eqz v0, :cond_1

    .line 326
    const v0, 0x7f050006

    goto :goto_0

    .line 327
    :cond_1
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v0, :cond_2

    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SdlScanner;

    if-eqz v0, :cond_3

    .line 329
    :cond_2
    const v0, 0x7f050003

    goto :goto_0

    .line 330
    :cond_3
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/HHPScanner;

    if-eqz v0, :cond_4

    .line 331
    const v0, 0x7f050002

    goto :goto_0

    .line 332
    :cond_4
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/N4313Scanner;

    if-eqz v0, :cond_5

    .line 333
    const v0, 0x7f050001

    goto :goto_0

    .line 334
    :cond_5
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/SE965Scanner;

    if-eqz v0, :cond_6

    .line 335
    const v0, 0x7f050005

    goto :goto_0

    .line 336
    :cond_6
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v0, v0, Lcom/seuic/scanner/EM1350Scanner;

    if-eqz v0, :cond_7

    .line 337
    const/high16 v0, 0x7f050000

    goto :goto_0

    .line 339
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initScanner(Landroid/content/Context;)Lcom/seuic/scanner/Scanner;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f050003

    const v6, 0x7f050002

    const v5, 0x7f050001

    const/high16 v4, 0x7f050000

    const/4 v3, 0x0

    .line 69
    invoke-static {p1}, Lcom/seuic/scanner/util/SCNParamsUtils;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/SCNParamsUtils;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->scnUtils:Lcom/seuic/scanner/util/SCNParamsUtils;

    .line 70
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/seuic/scanner/util/ScannerManager;->getScanner(Landroid/content/Context;)Lcom/seuic/scanner/Scanner;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    .line 74
    :cond_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->COMMEN_CONFIG_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    .line 78
    :cond_1
    invoke-static {}, Lcom/seuic/scanner/util/ScannerManager;->getXmlResID()I

    move-result v0

    sput v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    .line 79
    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 83
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->scnUtils:Lcom/seuic/scanner/util/SCNParamsUtils;

    sget v1, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/seuic/scanner/util/SCNParamsUtils;->initParams(ZILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    .line 85
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/seuic/scanner/util/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 88
    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050004

    if-eq v0, v1, :cond_2

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050006

    if-eq v0, v1, :cond_2

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-eq v0, v5, :cond_2

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050005

    if-eq v0, v1, :cond_2

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-ne v0, v4, :cond_4

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 95
    const/16 v0, 0x321

    invoke-static {v0, v3}, Lcom/seuic/scanner/util/ScannerManager;->setParams(II)Z

    .line 118
    :cond_3
    :goto_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    return-object v0

    .line 96
    :cond_4
    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-eq v0, v6, :cond_5

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-ne v0, v7, :cond_3

    .line 98
    :cond_5
    invoke-static {}, Lcom/seuic/scanner/util/ScannerManager;->save()V

    goto :goto_0

    .line 100
    :cond_6
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/seuic/scanner/util/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050004

    if-eq v0, v1, :cond_7

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050006

    if-eq v0, v1, :cond_7

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-eq v0, v5, :cond_7

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    const v1, 0x7f050005

    if-eq v0, v1, :cond_7

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-ne v0, v4, :cond_8

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    .line 109
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/Scanner;->setParams(Landroid/util/SparseIntArray;)Z

    goto :goto_0

    .line 111
    :cond_8
    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-eq v0, v6, :cond_9

    sget v0, Lcom/seuic/scanner/util/ScannerManager;->resid:I

    if-ne v0, v7, :cond_3

    .line 113
    :cond_9
    invoke-virtual {p0}, Lcom/seuic/scanner/util/ScannerManager;->openSCN()V

    goto :goto_0
.end method

.method private open()Z
    .locals 10

    .prologue
    const/16 v8, 0xc

    .line 166
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v7}, Lcom/seuic/scanner/Scanner;->open()Z

    move-result v5

    .line 168
    .local v5, "ret":Z
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/SE4500Scanner;

    if-nez v7, :cond_0

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/HHPScanner;

    if-nez v7, :cond_0

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/SdlScanner;

    if-eqz v7, :cond_2

    .line 171
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 172
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 173
    .local v2, "key":I
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    sget-object v8, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lcom/seuic/scanner/Scanner;->setParams(II)Z

    .line 174
    const/16 v7, 0x332

    if-ne v2, v7, :cond_1

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/HHPScanner;

    if-eqz v7, :cond_1

    .line 178
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mContext:Landroid/content/Context;

    const-string v8, "OcrConfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 179
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "ocr"

    const-string v8, "13777777770"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "name":Ljava/lang/String;
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    check-cast v7, Lcom/seuic/scanner/HHPScanner;

    invoke-virtual {v7, v3}, Lcom/seuic/scanner/HHPScanner;->setOCRTemplate(Ljava/lang/String;)V

    .line 171
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    .end local v2    # "key":I
    .end local v6    # "size":I
    :cond_2
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/SE955Scanner;

    if-nez v7, :cond_3

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    instance-of v7, v7, Lcom/seuic/scanner/EM1350Scanner;

    if-eqz v7, :cond_4

    .line 185
    :cond_3
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 186
    .local v0, "continue_value":I
    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v7, v8, v0}, Lcom/seuic/scanner/Scanner;->setParams(II)Z

    .line 188
    .end local v0    # "continue_value":I
    :cond_4
    return v5
.end method

.method static save()V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "config":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-static {v0}, Lcom/seuic/scanner/util/FileUtil;->mkdirs(Ljava/io/File;)Z

    .line 298
    :cond_0
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->scnUtils:Lcom/seuic/scanner/util/SCNParamsUtils;

    sget-object v2, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/seuic/scanner/util/SCNParamsUtils;->saveParams(Landroid/util/SparseIntArray;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private static setContinuousScan(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 282
    if-ne p0, v1, :cond_0

    .line 283
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/seuic/scanner/util/Appconfig;->getInstance(Landroid/content/Context;)Lcom/seuic/scanner/util/Appconfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/seuic/scanner/util/Appconfig;->setIscontinue(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public static setParams(II)Z
    .locals 8
    .param p0, "num"    # I
    .param p1, "value"    # I

    .prologue
    .line 234
    const/4 v4, 0x0

    .line 235
    .local v4, "result":Z
    const/16 v6, 0xc

    if-ne p0, v6, :cond_2

    .line 236
    const-class v7, Lcom/seuic/scanner/util/ScannerManager;

    monitor-enter v7

    .line 237
    if-nez p1, :cond_0

    .line 238
    :try_start_0
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v6}, Lcom/seuic/scanner/Scanner;->stopScan()V

    .line 241
    :cond_0
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v6, p0, p1}, Lcom/seuic/scanner/Scanner;->setParams(II)Z

    move-result v4

    .line 242
    if-eqz v4, :cond_1

    .line 243
    invoke-static {p1}, Lcom/seuic/scanner/util/ScannerManager;->setContinuousScan(I)V

    .line 244
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    invoke-static {}, Lcom/seuic/scanner/util/ScannerManager;->save()V

    .line 247
    :cond_1
    monitor-exit v7

    move v6, v4

    .line 278
    :goto_0
    return v6

    .line 247
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 251
    :cond_2
    invoke-static {p0, p1}, Lcom/seuic/scanner/util/ScannerManager;->HHPScannerPostCodeSet(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 252
    const/4 v6, 0x0

    goto :goto_0

    .line 254
    :cond_3
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v6, p0, p1}, Lcom/seuic/scanner/Scanner;->setParams(II)Z

    move-result v4

    .line 255
    if-eqz v4, :cond_7

    .line 256
    const/16 v6, 0x321

    if-ne p0, v6, :cond_5

    .line 257
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->configFullPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/seuic/scanner/util/FileUtil;->delete(Ljava/lang/String;)V

    .line 258
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/seuic/scanner/util/ScannerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/shared_prefs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OcrConfig.xml"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 264
    :cond_4
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 266
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v6}, Lcom/seuic/scanner/Scanner;->getAllParams()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 267
    .local v0, "array":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 268
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 269
    .local v3, "key":I
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v6, v3}, Lcom/seuic/scanner/Scanner;->getParams(I)I

    move-result p1

    .line 270
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "array":Landroid/util/SparseIntArray;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "key":I
    .end local v5    # "size":I
    :cond_5
    sget-object v6, Lcom/seuic/scanner/util/ScannerManager;->mBindValue:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    :cond_6
    invoke-static {}, Lcom/seuic/scanner/util/ScannerManager;->save()V

    :cond_7
    move v6, v4

    .line 278
    goto :goto_0
.end method


# virtual methods
.method public closeSCN()V
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setOpened(Ljava/lang/Boolean;)V

    .line 145
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->stopScan()V

    .line 146
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->close()V

    .line 148
    :cond_0
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->stopScan()V

    .line 160
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->disable()V

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 152
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->enable()V

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllParams()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->getAllParams()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public getParams(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 344
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    invoke-static {p2}, Lcom/seuic/scanner/util/ScannerManager;->getParams(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScanner()Lcom/seuic/scanner/Scanner;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    return-object v0
.end method

.method public openSCN()V
    .locals 2

    .prologue
    .line 206
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/seuic/scanner/util/ScannerManager;->open()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/seuic/scanner/util/AppCache;->setOpened(Ljava/lang/Boolean;)V

    .line 210
    :cond_0
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDecodeInfoCallBack(Lcom/seuic/scanner/DecodeInfoCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/seuic/scanner/DecodeInfoCallBack;

    .prologue
    .line 315
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0, p1}, Lcom/seuic/scanner/Scanner;->setDecodeInfoCallBack(Lcom/seuic/scanner/DecodeInfoCallBack;)V

    .line 316
    return-void
.end method

.method public setStatusCallBack(Lcom/seuic/scanner/StatusCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/seuic/scanner/StatusCallBack;

    .prologue
    .line 319
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0, p1}, Lcom/seuic/scanner/Scanner;->setStatusCallBack(Lcom/seuic/scanner/StatusCallBack;)V

    .line 320
    return-void
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isScanEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mObserver:Lcom/seuic/scanner/util/ScreenObserver;

    invoke-virtual {v0}, Lcom/seuic/scanner/util/ScreenObserver;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->startScan()V

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lcom/seuic/scanner/util/ScannerManager;->mScannerLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-static {}, Lcom/seuic/scanner/util/AppCache;->isOpened()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/seuic/scanner/util/ScannerManager;->mScanner:Lcom/seuic/scanner/Scanner;

    invoke-virtual {v0}, Lcom/seuic/scanner/Scanner;->stopScan()V

    .line 130
    :cond_0
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
